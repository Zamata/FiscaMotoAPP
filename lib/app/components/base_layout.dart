import 'package:flutter/material.dart';

//este es un componente reutilizable - es 
class BaseLayout extends StatelessWidget {
  final Widget child;
  
  const BaseLayout({
    super.key, 
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.webp'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(60, 255, 255, 255),
                borderRadius: BorderRadius.circular(18),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255), // Semi-transparent dark red
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          // Escudo La Joya
          Image.asset(
            'assets/images/escudoJoya.webp', 
            height: 60,
          ),
          const SizedBox(width: 12),
          // La Joya Avanza logo and slogan
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/eslogan.webp',
                height: 60,
              ),
            ],
          ),
          const Spacer(),
          // Fiscamoto logo
          Image.asset(
            'assets/images/fiscamoto.webp',
            height: 60,
          ),
        ],
      ),
    );
  }
}