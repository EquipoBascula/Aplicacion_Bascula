import 'inicio.dart'; // Importa el archivo "inicio.dart" con la pantalla correspondiente
import 'package:flutter/material.dart';

class Tipo extends StatelessWidget {
  const Tipo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent, // Hacemos el fondo del Scaffold transparente
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '¿Cuál será el uso que le das a nuestra aplicación?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mourbout', // Usa la fuente Mourbout
                  color: Colors.white,
                  fontSize: 28.0,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black, // Color de sombra para el contorno
                      offset: Offset(0, 0),
                    ),
                  ],
                  fontStyle: FontStyle.italic, // Texto en cursiva
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  // Redirige a la pantalla de Inicio cuando se presiona el botón "Perfil"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Inicio()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                  elevation: MaterialStateProperty.all<double>(0.0),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/imgs/perfil.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Personal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mourbout', // Usa la fuente Mourbout
                        color: Colors.white,
                        fontSize: 24.0,
                        fontStyle: FontStyle.italic, // Texto en cursiva
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón "Empresarial"
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                  elevation: MaterialStateProperty.all<double>(0.0),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/imgs/empresa.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Empresarial',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mourbout', // Usa la fuente Mourbout
                        color: Colors.white,
                        fontSize: 24.0,
                        fontStyle: FontStyle.italic, // Texto en cursiva
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}