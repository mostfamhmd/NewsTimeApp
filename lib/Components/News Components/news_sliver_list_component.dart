import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_time/Components/News%20Components/news_items_component.dart';
import 'package:news_time/Model/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsSliverListComponet extends StatefulWidget {
  const NewsSliverListComponet({
    super.key,
    required this.news,
  });

  final List<NewsModel> news;

  @override
  State<NewsSliverListComponet> createState() => _NewsSliverListComponetState();
}

class _NewsSliverListComponetState extends State<NewsSliverListComponet> {
  Future<void> _launchURL(String url) async {
    try {
      Uri uri = Uri.parse(url);
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error launching URL: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final newsDetials = widget.news[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () async {
                await _launchURL(newsDetials.url);
              },
              child: NewsComponent(items: newsDetials),
            ),
          );
        },
        childCount: widget.news.length,
      ),
    );
  }
}
