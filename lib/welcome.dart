import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de la empresa desde URL
            Image.network(
              'https://media.licdn.com/dms/image/v2/D4E0BAQG1NjO9p1MIcA/company-logo_200_200/company-logo_200_200/0/1698238463664?e=1741219200&v=beta&t=gfiv2F9WyGhMNIIzW6hurjd4cOkJUL80bSJxr6F-SnI',  // URL de la imagen del logo
              height: 150,  // Ajusta el tamaño según sea necesario
              width: 150,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 30),  // Espacio entre el logo y el texto
            Text(
              '¡Bienvenido a Konecte!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Encuentra tu hogar ideal con facilidad y confianza.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50),  // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('Comenzar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
