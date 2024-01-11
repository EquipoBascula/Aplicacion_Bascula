import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/bienvenida.dart';
import 'inicio.dart'; // Importa el archivo inicio.dart

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String validationMessage = "";

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _showConfirmPassword = !_showConfirmPassword;
    });
  }

  void _register() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty || confirmPasswordController.text.isEmpty) {
      setState(() {
        validationMessage = "Por favor, complete todos los campos.";
      });
    } else if (passwordController.text != confirmPasswordController.text) {
      setState(() {
        validationMessage = "Las contraseñas no coinciden.";
      });
    } else {
      setState(() {
        validationMessage = ""; // Restablecer el mensaje de validación
      });

      // Continuar con el registro
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Bienvenida()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo blanco
        appBar: AppBar(
          title: const Text('Registro', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0, // Sin sombra en la barra de la aplicación
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Correo Electrónico',
                          labelStyle: TextStyle(
                            color: Color(0xFFFFA500),
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sans-serif-condensed-medium',
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00FFFF)),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(
                            color: Color(0xFFFFA500),
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sans-serif-condensed-medium',
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00FFFF)),
                          ),
                          suffixIcon: IconButton(
                            onPressed: _togglePasswordVisibility,
                            icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        obscureText: !_showPassword,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: confirmPasswordController,
                              decoration: InputDecoration(
                                labelText: 'Confirma Contraseña',
                                labelStyle: const TextStyle(
                                  color: Color(0xFFFFA500),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sans-serif-condensed-medium',
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF00FFFF)),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: _toggleConfirmPasswordVisibility,
                                  icon: Icon(_showConfirmPassword ? Icons.visibility : Icons.visibility_off),
                                ),
                              ),
                              obscureText: !_showConfirmPassword,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0), // Espacio para el mensaje de validación
                      Text(
                        validationMessage,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: _register,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF0000FF)),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 40)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Crear cuenta',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'sans-serif-condensed-medium',
                          ),
                        ),
                      ),
                      const SizedBox(height: 70.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Inicio()),
                              );
                            },
                            icon: Image.asset('assets/imgs/flecha-izquierda.png', width: 120, height: 120),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}