import 'package:flutter/material.dart';

class ImageNewsComponent extends StatelessWidget {
  const ImageNewsComponent(
      {super.key,
      required this.image,
      required this.height,
      required this.width});
  final String image;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}
