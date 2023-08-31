import 'package:flutter/material.dart';
import 'package:news_time/Components/Joker%20Components/image_news_component.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';
import 'package:news_time/Model/news_model.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({super.key, required this.items});
  final NewsModel items;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageNewsComponent(
          image: items.image ??
              "https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png",
          height: MediaQuery.sizeOf(context).height * 200 / 867.4,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextComponent(
              text: items.title, fonts: "Cairo", color: Colors.black, size: 22),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextComponent(
              text: items.description ?? " ",
              fonts: "IBM Plex Sans Arabic",
              color: Colors.grey,
              size: 14),
        ),
      ],
    );
  }
}
