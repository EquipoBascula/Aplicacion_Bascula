import 'package:flutter/material.dart';
import 'package:formulario/pantallas/Pantalla_inicio.dart';
import 'package:formulario/pantallas/formulario/bienvenida.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _login() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      // Validar que se completaron los campos
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Error de inicio de sesión"),
            content: Text("Por favor, complete todos los campos."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        },
      );
    } else {
      // Continuar con el inicio de sesión
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaInicio()),
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
          title: Text('Inicio de Sesión', style: TextStyle(color: Colors.black)),
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
                      Text(
                        '¿Quieres iniciar sesión con?',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Acción para Google
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Fondo blanco
                              onPrimary: Colors.black, // Texto negro
                            ),
                            child: Image.asset('assets/imgs/google.png', height: 50.0, width: 50.0),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Acción para Instagram
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Fondo blanco
                              onPrimary: Colors.black, // Texto negro
                            ),
                            child: Image.asset('assets/imgs/instagram.png', height: 50.0, width: 50.0),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Acción para Facebook
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Fondo blanco
                              onPrimary: Colors.black, // Texto negro
                            ),
                            child: Image.asset('assets/imgs/facebook.png', height: 50.0, width: 50.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      _buildTextField("Correo Electrónico", emailController, false),
                      _buildTextField("Contraseña", passwordController, true, _togglePasswordVisibility, _showPassword),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: _login,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF0000FF)),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 40)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 70.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Acción para "¿Olvidaste tu contraseña?"
                            },
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildTextField(String label, TextEditingController controller, bool isPassword,
      [void Function()? togglePasswordVisibility, bool showPassword = false]) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: Color(0xFFFFA500),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif-condensed-medium',
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF00FFFF)),
            ),
            suffixIcon: isPassword
                ? IconButton(
              onPressed: togglePasswordVisibility,
              icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
            )
                : null,
          ),
          obscureText: isPassword && !showPassword,
        ),
      ],
    );
  }
}