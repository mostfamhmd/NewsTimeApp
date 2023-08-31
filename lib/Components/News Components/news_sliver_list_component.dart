import 'package:flutter/material.dart';
import 'package:news_time/Components/News%20Components/news_items_component.dart';
import 'package:news_time/Model/news_model.dart';
import 'package:news_time/Screens/details_screen.dart';

class NewsSliverListComponet extends StatelessWidget {
  NewsSliverListComponet({
    super.key,
    required this.news,
  });

  final List<NewsModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final newsDetials =
              news[index]; // Retrieve the news details for the current index
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      image: newsDetials.image ??
                          "https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png", // Use null-aware operator
                      content: newsDetials.content,
                      title: newsDetials.title,
                      publishedAt: newsDetials.publishedAt,
                      url: newsDetials.url,
                      description: newsDetials.description,
                    ),
                  ),
                );
              },
              child: NewsComponent(items: newsDetials),
            ),
          );
        },
        childCount: news.length,
      ),
    );
  }
}
