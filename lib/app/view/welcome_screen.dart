// welcome_screen.dart
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/login'),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/images/welcome.jpg',
            fit: BoxFit.contain, // Muestra toda la imagen sin recorte
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
