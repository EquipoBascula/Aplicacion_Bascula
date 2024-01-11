import 'package:flutter/material.dart';
import 'package:formulario/pantallas/login.dart';

class Bienvenida extends StatefulWidget {
  const Bienvenida({Key? key}) : super(key: key);

  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  void initState() {
    super.initState();
    _redirectToInicio();
  }

  void _redirectToInicio() {
    Future.delayed(const Duration(seconds: 4), () {
      // Redirige a la pantalla "Login" después de 4 segundos (puedes ajustar el tiempo según tus necesidades)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black, // Fondo negro
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Bien',
                      style: TextStyle(
                        color: Colors.orange, // Color naranja
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: 'venido',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset('assets/imgs/aplausos.png', width: 287),
              ),
            ],
          ),
        ),
      ),
    );
  }
}