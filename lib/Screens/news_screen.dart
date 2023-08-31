import 'package:flutter/material.dart';
import 'package:news_time/Components/list_view_categories_component.dart';
import 'package:news_time/Components/list_news_builder_component.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextComponent(
                text: "News", fonts: "Ubuntu", color: Colors.black, size: 22),
            TextComponent(
                text: "Time", fonts: "Ubuntu", color: Colors.orange, size: 22)
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: ListViewCategories(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 35 / 867.4,
                ),
              ),
              const ListNewsBuilderComponent(
                categoryName: 'general',
              )
            ],
          )),
    );
  }
}
