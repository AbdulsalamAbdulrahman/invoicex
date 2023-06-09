import 'package:flutter/material.dart';

class CentredView extends StatelessWidget {
  final Widget child;
  const CentredView({super.key, required this.child});

//limiting the Width of the content to a max size
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
