import 'package:flutter/material.dart';

class DatoWidget extends StatelessWidget {
  //datos a utilizar
  final String titulo;
  final String valor;
  final String alerta;

  DatoWidget({required this.titulo, required this.valor, required this.alerta});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          // Mostrar el título del dato
          Text(
            titulo,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 8), // Espacio entre el título y el valor
          // Mostrar el valor del dato
          Text(
            valor,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 8), // Espacio entre el valor y la alerta
          Container(
            padding: EdgeInsets.all(8),
            // Diseño del indicador de alerta
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red, // Color de la alerta
            ),
            child: Text(
              alerta, // Mostrar la alerta en el círculo rojo
              style: TextStyle(color: Colors.white), // Color del texto en el círculo rojo
            ),
          ),
        ],
      ),
    );
  }
}
