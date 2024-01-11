import 'package:flutter/material.dart';

class DiagramaCircular extends StatelessWidget {
  final double porcentaje;

  DiagramaCircular(this.porcentaje);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 60.0),
      alignment: Alignment.center,
      child: SizedBox(
        width: 100.0, // Ajusta el ancho
        height: 100.0, // Ajusta el alto
        child: Stack(
          children: [
            CircularProgressIndicator(
              value: porcentaje / 1000,
              strokeWidth: 5.0, // Ajusta el grosor de la línea según tus necesidades
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            Center(
              child: Text(
                '$porcentaje%',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
