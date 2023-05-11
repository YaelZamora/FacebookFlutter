import 'package:facebook/pages/muro_page.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Menú',
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
                    Icons.settings,
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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const MuroPage(),
                ),
              ),
              child: Container(
                width: size.width,
                height: 75,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade900,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/id/20/40',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Yael Zamora',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const Text(
              'Tus accesos directos',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width,
              height: 75,
              child: ListView.separated(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/id/${index + 30}/40'),
                    ),
                    Text(
                      nombres.elementAt(index),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                ),
              ),
            ),
            const Text(
              'Todos los accesos directos',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              width: size.width,
              height: size.width * 1.5,
              margin: const EdgeInsets.only(top: 10),
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childAspectRatio: 2,
                ),
                itemBuilder: (BuildContext context, int index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade800,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        icono.elementAt(index),
                        color: colores.elementAt(index),
                        size: 30,
                      ),
                      const Spacer(),
                      Text(
                        descripcion.elementAt(index),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 40,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800,
              ),
              clipBehavior: Clip.hardEdge,
              child: MaterialButton(
                minWidth: size.width,
                height: 40,
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Ver más',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: const Icon(
                Icons.handshake,
                color: Colors.grey,
              ),
              title: const Text(
                'Recursos de la comunidad',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: const Icon(
                Icons.help,
                color: Colors.grey,
              ),
              title: const Text(
                'Ayuda y soporte',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: const Text(
                'Configuración y privacidad',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 40,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800,
              ),
              clipBehavior: Clip.hardEdge,
              child: MaterialButton(
                minWidth: size.width,
                height: 40,
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Cerrar sesión',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<IconData> icono = [
  Icons.watch_later,
  Icons.bookmark,
  Icons.newspaper,
  Icons.group,
  Icons.person_add,
  Icons.store_mall_directory_outlined,
  Icons.ondemand_video_rounded,
  Icons.flag,
  Icons.movie,
  Icons.calendar_month,
  Icons.videogame_asset,
  Icons.menu_book,
];

List<Color> colores = [
  Colors.white,
  Colors.purple,
  Colors.blue,
  Colors.blueGrey,
  Colors.blue,
  Colors.blueAccent,
  Colors.blue.shade900,
  Colors.orange,
  Colors.deepOrange,
  Colors.red,
  Colors.lightBlue,
  Colors.lightBlue.shade900,
];

List<String> descripcion = [
  'Recuerdos',
  'Guardado',
  'Feeds',
  'Amigos',
  'Grupos',
  'Marketplace',
  'Videos en watch',
  'Páginas',
  'Reels',
  'Eventos',
  'Videojuegos',
  'Stories',
];

List<String> nombres = [
  'Araceli Ruiz',
  'Leo Jimenez',
  'Adan Rodriguez',
  'Mauricio AU',
  'Fer Almo',
  'Teo Rod',
];
