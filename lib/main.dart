import 'package:flutter/material.dart';
import 'package:prueba_flutter/welcome.dart';

import 'chatbot_screen.dart';
import 'dashboard_screen.dart';
import 'detail_screen.dart';
import 'form_screen.dart';

Future<void> main(debugDisableDeviceMode) async {
  // Desactiva la banda de depuración en modo desarrollo
  WidgetsFlutterBinding.ensureInitialized();
  debugDisableDeviceMode = true;  // Deshabilitar la banda de debug
  runApp(KonecteApp());
}

class KonecteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konecte',
      debugShowCheckedModeBanner: false, // Esto quita la banda de debug
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/detail': (context) => DetailScreen(),
        '/form': (context) => FormScreen(),
        '/chatbot': (context) => ChatbotScreen(),
      },
    );
  }
}
