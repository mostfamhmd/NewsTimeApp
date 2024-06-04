import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_time/Meeting/cubit/get_invoice_cubit.dart';

const urlLink = "http://appydev-001-site2.atempurl.com";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetInvoiceCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetInvoiceCubit>().getInvoiceData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BlocBuilder<GetInvoiceCubit, GetInvoiceState>(
          builder: (context, state) {
            if (state is GetInvoiceLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetInvoiceLoaded) {
              return ListView.builder(
                itemCount: state.getInVoice.orderNo,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    Row(
                      children: [
                        Text("Order Number: ${state.getInVoice.orderNo}"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Name: ${state.getInVoice.name}"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("quantity: ${state.getInVoice.quantity}"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Price: ${state.getInVoice.price}"),
                      ],
                    )
                  ],
                ),
              );
            } else if (state is GetInvoiceError) {
              return Center(
                child: Text(state.serverFailure.errMessage),
              );
            } else {
              return Center(
                child: Text("Error"),
              );
            }
          },
        ),
      ),
    );
  }
}
