import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final num size;
  final String asset;
  const AppAvatar({super.key, this.size = 36, required this.asset});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: SizedBox(
        width: size.toDouble(),
        height: size.toDouble(),
        child: Image.asset(asset, fit: BoxFit.cover),
      ),
    );
  }
}
