// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';
import 'package:news_time/Components/News%20Components/news_sliver_list_component.dart';
import 'package:news_time/Model/news_model.dart';
import 'package:news_time/Services/news_services.dart';

class ListNewsBuilderComponent extends StatefulWidget {
  const ListNewsBuilderComponent({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  State<ListNewsBuilderComponent> createState() =>
      _ListNewsBuilderComponentState();
}

class _ListNewsBuilderComponentState extends State<ListNewsBuilderComponent> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews(category: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsSliverListComponet(
              news: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextComponent(
                    text: "Request Field",
                    fonts: "Cairo",
                    color: Colors.black,
                    size: 30),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              ),
            );
          }
        });
  }
}
