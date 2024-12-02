import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, String>> properties = [
    {
      'name': 'Casa Moderna',
      'image': 'https://i.pinimg.com/236x/b4/6c/da/b46cda051b2adc9859df85f3132e2940.jpg',
      'location': 'Ciudad A'
    },
    {
      'name': 'Apartamento Urbano',
      'image': 'https://i.pinimg.com/236x/1b/74/36/1b74363cd2badb7906dac912d9030ba6.jpg',
      'location': 'Ciudad B'
    },
    {
      'name': 'Casa de Campo',
      'image': 'https://i.pinimg.com/736x/20/ac/65/20ac65da6b52f5f2582cbc0b5c1248f7.jpg',
      'location': 'Ciudad C'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Konecte')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          // Listado de propiedades (tarjetas)
          ...properties.map((property) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.network(
                    property['image']!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(property['name']!),
                    subtitle: Text('Ubicación: ${property['location']}'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                  ),
                ],
              ),
            );
          }).toList(),

          // Sección del chatbot
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Asesoría Virtual',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Chatea con nuestro asistente virtual para recibir ayuda durante tu búsqueda.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chatbot');
                  },
                  child: Text('Iniciar Chat'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
