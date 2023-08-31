import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  const TextComponent(
      {Key? key,
      required this.text,
      required this.fonts,
      required this.color,
      required this.size})
      : super(key: key);

  final String text;
  final String fonts;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(fonts)
          .copyWith(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
