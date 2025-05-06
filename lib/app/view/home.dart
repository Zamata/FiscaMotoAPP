import 'package:flutter/material.dart';
import 'control_documentos_screen.dart'; // Asegúrate de importar la pantalla a la que deseas navegar.

import '../components/base_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BaseLayout(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contenido principal aquí',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(153, 0, 0, 0)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navega a la pantalla ControlDeDocumentosScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ControlDeDocumentosScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text('Ir a Control de Documentos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
