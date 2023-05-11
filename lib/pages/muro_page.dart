import 'package:facebook/tabs/tabs.dart';
import 'package:flutter/material.dart';

class MuroPage extends StatelessWidget {
  const MuroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
        title: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.grey,
          ),
          label: const Text(
            'Yael Zamora',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.60,
              color: const Color.fromRGBO(22, 22, 22, 1),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/id/50/400',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height * 0.6,
                    margin: const EdgeInsets.only(top: 90),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 145,
                          height: 145,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://picsum.photos/id/20/150',
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              width: 5,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                        const Text(
                          'Yael Zamora',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Twitch: twitch.com/yaelzamora\nHacemos transmisiones de ajedrez,\nlivecoding y a veces jugamos algo :3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 40,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: size.width,
                            height: 40,
                            color: Colors.blue,
                            child: const Text(
                              'Agregar a historia',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: size.width * 0.8,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: MaterialButton(
                                onPressed: () {},
                                minWidth: size.width * 0.8,
                                height: 40,
                                color: Colors.grey.shade800,
                                child: const Text(
                                  'Editar perfil',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: size.width * 0.12,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade800,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: size.height,
              color: const Color.fromRGBO(22, 22, 22, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Publicaciones',
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Reels',
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade800,
                  ),
                  const Text(
                    'Detalles',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Vive en Atizapan de Zaragoza',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    title: Text(
                      'De Ciudad Lopez Mateos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    title: Text(
                      'En una relación con El amor de mi vida',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Ver tu información',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 35,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: size.width,
                      height: 35,
                      child: const Text(
                        'Editar detalles públicos',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Text(
                        'Amigos\n539',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Buscar\namigos',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width,
                    height: 270,
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://picsum.photos/id/${index + 13}/150',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              nombres.elementAt(index),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 40,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade800,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: size.width,
                      height: 40,
                      child: const Text(
                        'Ver todos los amigos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width,
              height: 270,
              color: const Color.fromRGBO(22, 22, 22, 1),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Publicaciones',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Filtros',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/id/20/150',
                      ),
                    ),
                    title: const Text(
                      '¿Qué estás pensando?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo_library_outlined,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade700,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.movie,
                            color: Colors.red,
                          ),
                          label: const Text(
                            'Reel',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.videocam_rounded,
                            color: Colors.red,
                          ),
                          label: const Text(
                            'En vivo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: size.width,
                    height: 40,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade800,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: size.width,
                      height: 40,
                      child: const Text(
                        'Administrar publicaciones',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: 75,
              margin: const EdgeInsets.only(bottom: 10),
              color: const Color.fromRGBO(22, 22, 22, 1),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    iconos.elementAt(index),
                    color: Colors.white,
                  ),
                  label: Text(
                    label.elementAt(index),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) => Publicaciones(
                  size: size,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<IconData> iconos = [
  Icons.photo_library_outlined,
  Icons.person,
  Icons.star_rate_rounded,
  Icons.music_note,
];

List<String> label = [
  'Fotos',
  'Avatares',
  'Acontecimientos',
  'Música',
];

List<String> nombres = [
  'Alvaro\nRomero',
  'Ernesto\nEstrada',
  'Lizzi\nBae',
  'Mau\nJuarez',
  'Monserrat\nMartínez',
  'Leo\nAlvarez',
];
