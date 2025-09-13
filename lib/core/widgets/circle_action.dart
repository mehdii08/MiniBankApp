import 'package:flutter/material.dart';

class CircleAction extends StatelessWidget {
  const CircleAction({
    super.key,
    this.icon,
    this.title,
    this.onTap,
  });

  final IconData? icon;
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(icon ?? Icons.circle, color: colorScheme.onPrimary),
          ),
          const SizedBox(height: 8),
          Text(title ?? '', style: TextStyle(color: colorScheme.onSurface)),
        ],
      ),
    );
  }
}


