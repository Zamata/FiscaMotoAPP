import 'package:flutter/material.dart';
import '../components/base_layout.dart';

class ControlDeLaMotoScreen extends StatefulWidget {
  const ControlDeLaMotoScreen({super.key});

  @override
  State<ControlDeLaMotoScreen> createState() => _ControlDeLaMotoScreenState();
}

class _ControlDeLaMotoScreenState extends State<ControlDeLaMotoScreen> {
  final Map<String, bool> checkboxes = {
    'Cinturón de seguridad': false,
    'Funcionamiento de limpia': false,
    'Neumáticos de la moto': false,
    'Botiquín': false,
    'Extintor': false,
    'Luces del vehículo': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('PLACA: V57HSS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 8),
            ...checkboxes.keys.map((String key) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 135, 30, 30),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CheckboxListTile(
                  title: Text(key, style: const TextStyle(color: Color.fromARGB(255, 248, 248, 248))),
                  value: checkboxes[key],
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxes[key] = value ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: const Color.fromARGB(255, 237, 237, 237),
                  checkColor: const Color.fromARGB(255, 11, 11, 11),
                ),
              );
            }).toList(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Datos guardados')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
