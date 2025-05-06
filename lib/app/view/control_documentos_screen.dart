import 'package:flutter/material.dart';
import '../components/base_layout.dart';
import 'control_moto_screen.dart';

class ControlDeDocumentosScreen extends StatelessWidget {
  const ControlDeDocumentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToggleButtons(
              isSelected: [true, false],
              onPressed: (int index) {
                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ControlDeLaMotoScreen()),
                  );
                }
              },
              borderRadius: BorderRadius.circular(6),
              selectedColor: Colors.white,
              fillColor: Colors.red,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('CONTROL DE DOCUMENTOS'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('CONTROL DE LA MOTO'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('PLACA: BKU1444', style: TextStyle(color: Colors.white)),
            const Text('DNI: 46686864', style: TextStyle(color: Colors.white)),
            const SizedBox(height: 8),

            ...[
              'Revisión de características',
              'TUCJE',
              'Habilitación de empresa',
              'Transmisión GPS',
              'AFOCAT',
              'Licencia de conducir'
            ].map(
              (text) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Text(text),
                ),
              ),
            ),

            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: const Text('ACTA DE CONTROL'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: const Text('ACTA CONFORME'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
