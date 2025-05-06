import 'package:flutter/material.dart';
import 'view/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFD32F2F);Color(0xAA700000);
    const textColor = Color(0xFF333333);
    const textHeaderColor = Color.fromARGB(255, 245, 245, 245); 
    const backgroundColor = Color(0xAA700000);
    return MaterialApp(
      title: 'FiscaMoto - La Joya Avanza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: textColor,
          displayColor: textHeaderColor,
          fontFamily: 'Inter'
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

