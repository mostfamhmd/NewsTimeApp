import 'package:flutter/material.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';
import 'package:news_time/Components/list_news_builder_component.dart';

class CategoryNewsScreen extends StatelessWidget {
  const CategoryNewsScreen({
    super.key,
    required this.categoryName,
  });
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextComponent(
            text: categoryName, fonts: "Ubuntu", color: Colors.black, size: 22),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              ListNewsBuilderComponent(
                categoryName: categoryName,
              )
            ],
          )),
    );
  }
}
