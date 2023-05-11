import 'package:flutter/material.dart';

class MarketDetailPage extends StatelessWidget {
  const MarketDetailPage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/id/${index + 50}/400',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              '  Dulce viaje a la playa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '  \$3000 - Disponible',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '  Guardado por 8 personas más',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
            ),
            Container(
              width: size.width,
              height: 100,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.messenger_rounded,
                        color: Colors.deepPurple,
                        size: 25,
                      ),
                      Text(
                        'Envía un mensaje al vendedor',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 225,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade800,
                        ),
                        clipBehavior: Clip.hardEdge,
                        padding: const EdgeInsets.all(10),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Hola. ¿Sigue disponible?',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        padding: const EdgeInsets.all(2),
                        child: const Text(
                          'Enviar',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.grey.shade900,
                      elevation: 0,
                      child: const Icon(
                        Icons.volunteer_activism,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      'Enviar oferta',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.grey.shade900,
                      elevation: 0,
                      child: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      'Guardar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.grey.shade900,
                      elevation: 0,
                      child: const Icon(
                        Icons.forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      'Compartir',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Divider(
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    'Información del\nvendedor',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Detalles del\nvendedor',
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(),
              title: const Text(
                'Alejandra Jimenez',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: MaterialButton(
                onPressed: () {},
                color: Colors.grey.shade900,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  'Seguir',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.grey.shade600,
                  ),
                  const Text(
                    'Se unió a Facebook en 2023',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Tlalnepantla, EDOMEX',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'La ubicación es aproximada',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 10,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                'Detalles',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: const [
                  Text(
                    'Estado',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Nuevo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Descripción',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                'Inbox más información',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
