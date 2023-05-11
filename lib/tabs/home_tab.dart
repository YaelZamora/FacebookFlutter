import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          EscribirPublicacion(size: size),
          Historias(size: size),
          Publicaciones(size: size),
        ],
      ),
    );
  }
}

class EscribirPublicacion extends StatelessWidget {
  const EscribirPublicacion({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      width: size.width,
      color: const Color.fromRGBO(22, 22, 22, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/40'),
          ),
          Container(
            height: 40,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            child: const TextField(
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: '¿Qué estás pensando?',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_library,
              color: Colors.green.shade700,
            ),
          ),
        ],
      ),
    );
  }
}

class Historias extends StatelessWidget {
  const Historias({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 200,
      width: size.width,
      color: const Color.fromRGBO(22, 22, 22, 1),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => Historia(
          index: index,
        ),
      ),
    );
  }
}

class Historia extends StatelessWidget {
  const Historia({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      width: 110,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            'https://picsum.photos/id/${index + 40}/200',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.blue.shade900,
                  width: 3,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/id/${index + 10}/40',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 5,
            left: 10,
            child: Text(
              'Yael\nZamora',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Publicaciones extends StatelessWidget {
  const Publicaciones({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Publicacion(
          size: size,
          index: index,
        ),
      ),
    );
  }
}
