import 'package:flutter/material.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';
import 'package:news_time/Model/category_model.dart';
import 'package:news_time/Screens/category_screen.dart';

class CategoryItemsComponent extends StatelessWidget {
  const CategoryItemsComponent({super.key, required this.items});
  final CategoryModel items;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryNewsScreen(
                    categoryName: items.category,
                  )),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image:
              DecorationImage(image: AssetImage(items.image), fit: BoxFit.fill),
        ),
        child: Center(
          child: TextComponent(
              text: items.category,
              fonts: items.font,
              color: items.color,
              size: items.size),
        ),
      ),
    );
  }
}
