import 'package:flutter/material.dart';
import '../components/base_layout.dart';

class ControlFiscalizacionScreen extends StatelessWidget {
  const ControlFiscalizacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),

            // Título centrado
            const Center(
              child: Text(
                'CONTROL Y FISCALIZACIÓN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Botones de opciones
            _buildOptionButton(context, 'MOTOTAXI', '/mototaxi'),
            _buildOptionButton(context, 'TAXI', ''),
            _buildOptionButton(context, 'TRANSPORTE URBANO', ''),
            _buildOptionButton(context, 'TRANSPORTE INTERURBANO', ''),
            _buildOptionButton(context, 'CAMIONETA DE MUNICIPALIDAD', ''),

            const Spacer(),

            // Botón volver
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 20),
                  child: Image.asset(
                  'assets/images/btn_volver.png',
                  height: 50,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String text, String routeName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          if (routeName.isNotEmpty) {
            Navigator.pushNamed(context, routeName);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 251, 209, 1),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(text),
        ),
      ),
    );
  }
}
