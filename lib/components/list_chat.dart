import 'package:flutter/material.dart';

class ListChat extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String trailing;
  final IconData iconsMessage;
  final Color colorIcon;

  const ListChat({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.iconsMessage,
    required this.colorIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        maxRadius: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            iconsMessage,
            size: 17,
            color: colorIcon,
          ),
          SizedBox(width: 5), // Add spacing between icon and text
          Expanded(
            child: Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color.fromARGB(255, 106, 106, 106),
              ),
            ),
          ),
        ],
      ),
      trailing: Text(
        trailing,
      ),
    );
  }
}
