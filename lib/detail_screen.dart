import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final List<String> images = [
    'https://i.pinimg.com/236x/b4/6c/da/b46cda051b2adc9859df85f3132e2940.jpg',
    'https://i.pinimg.com/236x/1b/74/36/1b74363cd2badb7906dac912d9030ba6.jpg',
    'https://i.pinimg.com/736x/20/ac/65/20ac65da6b52f5f2582cbc0b5c1248f7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalle de Propiedad')),
      body: Column(
        children: [
          // Carrusel de imágenes
          Container(
            height: 250,
            child: PageView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.network(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nombre: Casa Moderna', style: TextStyle(fontSize: 18)),
                Text('Precio: \$300,000', style: TextStyle(fontSize: 16)),
                Text('Ubicación: Ciudad X', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
                Text('Descripción:', style: TextStyle(fontSize: 18)),
                Text(
                  'Esta propiedad es ideal para familias...',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
