import 'package:flutter/material.dart';
import 'package:formulario/pantallas/tipo.dart';
import 'package:formulario/pantallas/registro.dart';
import 'package:formulario/pantallas/login.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo blanco
        body: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Imagen centrada y más arriba del centro con espacio arriba y abajo
                  const SizedBox(height: 70.0),
                  Image.asset(
                    'assets/imgs/Logo.png', // Ruta a la imagen del logo
                    width: 318.0,
                    height: 390.0,
                    fit: BoxFit.contain, // Centra la imagen
                  ),
                  const SizedBox(height: 50.0),

                  // Botón "Iniciar Sesión" centrado
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Acción para el botón "Iniciar Sesión" (redirige a la pantalla de inicio de sesión)
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Color azul
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        textAlign: TextAlign.center, // Centra el texto
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Texto en blanco
                        ),
                      ),
                    ),
                  ),

                  // Botón "Registrarse" centrado y con espacio
                  const SizedBox(height: 70.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Acción para el botón "Registrarse"
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Registro()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Color naranja
                      ),
                      child: const Text(
                        'Registrarse',
                        textAlign: TextAlign.center, // Centra el texto
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Texto en blanco
                        ),
                      ),
                    ),
                  ),

                  // Espacio adicional de 70 unidades entre "Registrarse" y las flechas
                  const SizedBox(height: 70.0),

                  // Botones de retorno ("flecha izquierda" y "flecha derecha") con separación final
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Acción para el botón "Flecha Izquierda"
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Tipo()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Fondo blanco
                        ),
                        child: Image.asset(
                          'assets/imgs/flecha-izquierda.png',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.contain, // Centra la imagen
                        ),
                      ),
                    ],
                  ),

                  // Separación de 40 unidades después de los botones de flecha
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}