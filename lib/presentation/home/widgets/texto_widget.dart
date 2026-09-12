import 'package:flutter/material.dart';

enum TextType { h1, h2, h3, h4, p }

class TextoWidget extends StatelessWidget {
  final String text;
  final TextType type;

  const TextoWidget({super.key, required this.text, this.type = TextType.p});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final style = switch (type) {
      TextType.h1 => textTheme.displayLarge,
      TextType.h2 => textTheme.displayMedium,
      TextType.h3 => textTheme.displaySmall,
      TextType.h4 => textTheme.bodyLarge,
      TextType.p => textTheme.bodySmall,
    };

    return Text(text, style: style,);
  }
}
