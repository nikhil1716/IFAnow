import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  const BuildText(
    this.text, {
    this.fontSize,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.textAlign,
    this.letterSpacing,
    this.fontFamily = 'TypoRound',
    this.lineHeight,
    this.overflow,
    this.maxLines,
    this.fontStyle,
    Key? key,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final String fontFamily;
  final double? lineHeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final FontStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        color: color,
        letterSpacing: letterSpacing,
        height: lineHeight,
      ),
    );
  }
}
