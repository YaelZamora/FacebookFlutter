import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 90,
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Watch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width,
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: botones.length,
                    itemBuilder: (BuildContext context, int index) =>
                        TextButton(
                      onPressed: () {},
                      child: Text(
                        botones.elementAt(index),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) => Container(
                width: size.width,
                height: size.height * 0.7,
                color: const Color.fromRGBO(22, 22, 22, 1),
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const InfoPost(),
                    const Text(
                      'Irure eu irure pariatur ea ipsum cupidatat ad ipsum.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://picsum.photos/id/${index + 100}/400',
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Reacciones(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> botones = [
  'Para ti',
  'En vivo',
  'Reels',
  'Musica',
  'Videojuegos',
  'Seguidos',
  'Guardados',
];
