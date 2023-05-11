import 'package:flutter/material.dart';

class Reacciones extends StatelessWidget {
  const Reacciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.grey,
          ),
          label: const Text(
            'Me gusta',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.grey,
          ),
          label: const Text(
            'Comentar',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            color: Colors.grey,
          ),
          label: const Text(
            'Compartir',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
