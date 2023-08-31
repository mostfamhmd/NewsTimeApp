import 'package:flutter/material.dart';
import 'package:news_time/Components/Categories%20Components/category_items_component.dart';
import 'package:news_time/Components/Categories%20Components/list_categories.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CategoryItemsComponent(items: categories[index]));
          }),
    );
  }
}
