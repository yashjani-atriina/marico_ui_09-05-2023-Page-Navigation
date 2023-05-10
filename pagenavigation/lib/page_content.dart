import 'package:flutter/material.dart';

class pageContent extends StatelessWidget {
  const pageContent({
    Key? key,
    required this.text,
    this.fontSize = 30,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
