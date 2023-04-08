import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_minimal_website/components/spacing.dart';
import 'package:flutter_minimal_website/components/typography.dart';

class TextBody extends StatelessWidget {
  final String text;

  const TextBody({Key? key, required this.text}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      child: Text(
        text,
        style: bodyTextStyle,
      ),
    );
  }
}

class TextBodySecondary extends StatelessWidget {
  final String text;

  const TextBodySecondary({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      child: Text(
        text,
        style: subtitleTextStyle,
      ),
    );
  }
}
