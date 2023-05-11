import 'package:flutter/material.dart';

class InfoPost extends StatelessWidget {
  const InfoPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.blue.shade900,
              width: 3,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                'https://picsum.photos/40',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Yael Zamora',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close_rounded,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
