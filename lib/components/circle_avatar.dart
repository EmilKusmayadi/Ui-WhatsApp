import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double maxRadius;

  const CustomCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.maxRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      maxRadius: maxRadius,
    );
  }
}
