import 'package:flutter/material.dart';
import '../components/base_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  bool showUserIcon = true;
  bool showPassIcon = true;

  @override
  void initState() {
    super.initState();
    userController.addListener(() {
      setState(() {
        showUserIcon = userController.text.isEmpty;
      });
    });
    passwordController.addListener(() {
      setState(() {
        showPassIcon = passwordController.text.isEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BaseLayout(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),

              // Logos arriba dentro de un botón visual
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/escudoJoya.webp', height: 70),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/eslogan.webp', height: 70),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Título
              const Text(
                'Aplicativo de\nControl Motorizado',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // Logo Fiscamoto (más grande)
              Image.asset('assets/images/fiscamoto.webp', height: 220),

              const SizedBox(height: 24),

              // Contenedor tipo botón visual
              Center(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 65, 5, 5),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Campo Usuario
                      TextField(
                        controller: userController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(94, 12, 12, 1),
                          hintText: 'Ingrese Usuario',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: const OutlineInputBorder(),
                          prefixIcon: showUserIcon
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/usuario.png'),
                                )
                              : null,
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),

                      const SizedBox(height: 16),

                      // Campo Contraseña
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(94, 12, 12, 1),
                          hintText: 'Ingrese contraseña',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: const OutlineInputBorder(),
                          prefixIcon: showPassIcon
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/contrasena.png'),
                                )
                              : null,
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),

                      const SizedBox(height: 24),

                      // Botón Ingresar
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '/menu'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 116, 10, 2),
                            padding: const EdgeInsets.symmetric(vertical: 16), // alto del botón
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8), // menos redondeado
                              ),
                              ),
                              child: const Text(
                                'Ingresar',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                                ),
                                ),
                      const SizedBox(height: 16),

                      // ¿Te olvidaste la contraseña?
                      const Text(
                        '¿Te olvidaste la contraseña?',
                        style: TextStyle(
                          color: Color.fromARGB(221, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
