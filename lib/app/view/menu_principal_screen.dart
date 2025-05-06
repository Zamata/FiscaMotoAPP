import 'package:flutter/material.dart';
import '../components/base_layout.dart';

class MenuPrincipalScreen extends StatelessWidget {
  const MenuPrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Texto superior centrado
            const Center(
              child: Text(
                'TRANSPORTE MOTORIZADO',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Fila 1: CONTROL y PRODUCCIÓN
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuIconButton(context, 'CONTROL Y FISCALIZACIÓN', 'assets/images/Btn_Control.png', '/fiscalizacion'),
                _buildMenuIconButton(context, 'PRODUCCIÓN', 'assets/images/btn_produccion.png', ''),
              ],
            ),

            const SizedBox(height: 20),

            // Fila 2: MONITOREO y CAMBIAR CONTRASEÑA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuIconButton(context, 'MONITOREO', 'assets/images/btn_Monitoreo.png', ''),
                _buildMenuIconButton(context, 'CAMBIAR CONTRASEÑA', 'assets/images/btn_contraseña.png', ''),
              ],
            ),

            const SizedBox(height: 30),

            // Botón Cerrar Sesión
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/login')),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 251, 222, 7),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: const Text(
                  'Cerrar sesión',
                  style: TextStyle(color: Color.fromARGB(255, 16, 1, 1), fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuIconButton(BuildContext context, String label, String imagePath, String routeName) {
    return GestureDetector(
      onTap: () {
        if (routeName.isNotEmpty) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Column(
        children: [
          Image.asset(imagePath, height: 150),
          const SizedBox(height: 8),
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
