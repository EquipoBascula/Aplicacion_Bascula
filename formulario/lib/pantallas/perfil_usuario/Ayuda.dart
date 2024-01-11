import 'package:flutter/material.dart';
import 'package:formulario/pantallas/perfil_usuario/MenuPrincipal.dart';
import 'package:formulario/pantallas/perfil_usuario//Suscripcion.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacionDiagonal(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Si quieres visualizar un tutorial de cómo funciona la aplicación, por favor, haz clic en el icono del video.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Navegar a YouTube cuando se presiona la imagen
                // Puedes cambiar el enlace a tu enlace de YouTube específico
                launch('https://www.youtube.com/');
              },
              child: Image.asset(
                'assets/multimedia.png',
                width: 200, // Ajusta el ancho de la imagen
                height: 200, // Ajusta la altura de la imagen
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    // Navegar a la otra pantalla cuando se presiona la imagen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuDesplegable()),
                    );
                  },
                  child: Image.asset(
                    'assets/F.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            //Boton 1 (bascula)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 1");
                  // Acción para el Botón 1
                },
                child: Container(
                  height: 60,
                  color: Colors.brown,
                  child: Center(
                    child: Image.asset(
                      'assets/icono_1.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ),
            //Boton 2 (ejercicios)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 2");
                  // Acción para el Botón 2
                },
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: Center(
                    child: Image.asset(
                      'assets/icono_2.png',
                      width: 29,
                      height: 29,
                    ),
                  ),
                ),
              ),
            ),
            //Boton 3 (comida)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 3");
                  // Acción para el Botón 3
                },
                child: Container(
                  height: 60,
                  color: Colors.orange,
                  child: Center(
                    child: Image.asset(
                      'assets/icono_3.png',
                      width: 29,
                      height: 29,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

