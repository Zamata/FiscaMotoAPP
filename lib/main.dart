// main.dart
import 'package:flutter/material.dart';
import 'app/view/welcome_screen.dart';
import 'app/view/login_screen.dart';
import 'app/view/menu_principal_screen.dart';
import 'app/view/control_fiscalizacion_screen.dart';
import 'app/view/mototaxi_screen.dart';
import 'app/view/control_documentos_screen.dart';
import 'app/view/control_moto_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FiscaMoto',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/menu': (context) => const MenuPrincipalScreen(),
        '/fiscalizacion': (context) => const ControlFiscalizacionScreen(),
        '/mototaxi': (context) => const MototaxiScreen(),
        '/documentos': (context) => const ControlDeDocumentosScreen(),
        '/moto': (context) => const ControlDeLaMotoScreen(),
      },
    );
  }
}
