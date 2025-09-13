import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({super.key, this.text, this.color, this.style});

  final String? text;
  final Color? color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final TextStyle? resolvedStyle = style?.copyWith(color: color) ??
        (color != null ? TextStyle(color: color) : null);
    return Text(text ?? '', style: resolvedStyle);
  }
}


