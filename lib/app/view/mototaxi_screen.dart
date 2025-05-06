import 'package:flutter/material.dart';
import '../components/base_layout.dart';


class MototaxiScreen extends StatelessWidget {
  const MototaxiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildYellowButton(context, 'CONTROL DE\nDOCUMENTOS', () {
                  Navigator.pushNamed(context, '/documentos');
                }),
                _buildYellowButton(context, 'CONTROL DE\nLA MOTO', () {
                  Navigator.pushNamed(context, '/moto');
                }),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'PLACA:',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset('assets/images/lupa.png', height: 40),
                ),
              ],
            ),
            const Divider(color: Colors.white),
            _buildTextLabel('DNI:'),
            const Divider(color: Colors.white),
            const SizedBox(height: 10),
            const SizedBox(height: 30),
            _buildTextLabel('RUC/Transporte:'),
            const SizedBox(height: 10),
            _buildLegend(),
            const SizedBox(height: 20),
            _buildYellowButton(context, 'VISUALIZAR DOCUMENTOS', () {}),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Regresa a Fiscalizacion
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 20),
                  child: Image.asset(
                    'assets/images/btn_volver.png',
                    height: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildYellowButton(BuildContext context, String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _buildTextLabel(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _buildLegend() {
    return Column(
      children: [
        _buildColorRow(Colors.green, 'Vigente'),
        _buildColorRow(Colors.amber, 'Vencido'),
        _buildColorRow(Colors.red, 'No tiene'),
      ],
    );
  }

  Widget _buildColorRow(Color color, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Row(
        children: [
          Container(width: 30, height: 20, color: color),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}