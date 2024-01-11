import 'package:flutter/material.dart';

class BarraNavegacionDiagonal extends StatelessWidget implements PreferredSizeWidget {
  @override
  // Widget para la barra de navegación con secciones diagonales
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PintorBarraNavegacionDiagonal(), // Pintor personalizado para dibujar las secciones
      child: AppBar(
        title: Row(
          children: <Widget>[
            //Logo de la app
            GestureDetector(
              onTap: () {
                // Lógica cuando se presiona el logo de la app
              },
              child: Image.asset(
                'assets/Logo.png',
                width: 60, //Tamaño del logo
                height: 60,
              ),
            ),
            SizedBox(width: 10), // Espaciado entre el logo y otras secciones
          ],
        ),
        actions: <Widget>[
          //Icono de usuario
          GestureDetector(
            onTap: () {
              // Lógica
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/U.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
        ],
        elevation: 0, // Elimina la sombra de la AppBar
        backgroundColor: Colors.transparent, // Hace que la AppBar sea transparente
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class PintorBarraNavegacionDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()..color = Colors.grey; // Color de la primera sección (izquierda)
    Paint paint2 = Paint()..color = Colors.brown; // Color de la segunda sección (café)
    Paint paint3 = Paint()..color = Colors.blue; // Color de la tercera sección (azul)
    Paint paint4 = Paint()..color = Colors.orange; // Color de la cuarta sección (naranja)

    double division1 = size.width * 0.360; //ancho para la primera sección
    double division2 = size.width * 0.580;   //ancho para la segunda sección
    double division3 = size.width * 0.800; //ancho para la tercera sección

    // Dibujar las secciones como paralelogramos
    Path path1 = Path()
      ..moveTo(0, 0)
      ..lineTo(division1, 0)
      ..lineTo(division1 - 50, size.height)
      ..lineTo(0, size.height)
      ..close();

    Path path2 = Path()
      ..moveTo(division1, 0)
      ..lineTo(division2 + 50, 0)
      ..lineTo(division2, size.height)
      ..lineTo(division1 - 50, size.height)
      ..close();

    Path path3 = Path()
      ..moveTo(division2, 0)
      ..lineTo(division3 + 50, 0)
      ..lineTo(division3, size.height)
      ..lineTo(division2 - 50, size.height)
      ..close();

    Path path4 = Path()
      ..moveTo(division3, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(division3 - 50, size.height)
      ..close();

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
