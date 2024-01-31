import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/circle_avatar.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String buttonLabel;

  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 223, 223, 223),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 120,
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CustomCircleAvatar(
              imageUrl: imageUrl,
              maxRadius: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 191, 255, 240),
            ),
            onPressed: () {},
            child: Text(
              buttonLabel,
              style: const TextStyle(
                color: Color.fromARGB(255, 15, 120, 108),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
