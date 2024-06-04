import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:news_time/Meeting/Service/inVoice_service.dart';
import 'package:news_time/Meeting/models/get_invoice.dart';
import 'package:news_time/Meeting/server_failure.dart';

part 'get_invoice_state.dart';

class GetInvoiceCubit extends Cubit<GetInvoiceState> {
  GetInvoiceCubit() : super(GetInvoiceInitial());

  Future getInvoiceData() async {
    emit(GetInvoiceLoading());

    Either<ServerFailure, GetInVoice> data =
        await InVoiceService().getInvoice();

    data.fold(
      (serverFailure) => emit(
        GetInvoiceError(
          serverFailure: serverFailure,
        ),
      ),
      (getInvoiceLoaded) => emit(
        GetInvoiceLoaded(getInVoice: getInvoiceLoaded),
      ),
    );
  }
}
