import 'package:flutter/material.dart';

class PantallaBascula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de navegación inferior con tres botones
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
                      'assets/body-weight.png',
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
                      'assets/dumbbell.png',
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
                      'assets/diet.png',
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
} //Class