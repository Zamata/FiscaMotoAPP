import 'package:flutter/material.dart';

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
      body: BaseLayout(
        child: Center(
          child: Text(
            'Contenido principal aquí',
            style: TextStyle(fontSize: 20,color: Color.fromARGB(153, 0, 0, 0)),
          ),
        ),
      ),
    );
  }
}


