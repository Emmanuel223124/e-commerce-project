import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final TextOverflow? overflow;

  const CustomText(
      {super.key,
      required this.title,
      required this.size,
      required this.color,
      required this.fontWeight,
        this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.lato(
        textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: size,
       
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
