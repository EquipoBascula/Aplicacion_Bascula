// diagrama_lineal.dart
import 'package:flutter/material.dart';

class DiagramaLineal extends StatelessWidget {
  final double proteinaGramos = 27;
  final double proteinaTotal = 122;

  final double carbohidratoGramos = 28;
  final double carbohidratoTotal = 167;

  final double grasaGramos = 15;
  final double grasaTotal = 55;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildBar("Proteínas", proteinaGramos / proteinaTotal, Colors.blue),
          _buildBar("Carbohidratos", carbohidratoGramos / carbohidratoTotal, Colors.green),
          _buildBar("Grasas", grasaGramos / grasaTotal, Colors.orange),
        ],
      ),
    );
  }

  Widget _buildBar(String label, double percentage, Color color) {
    return Column(
      children: [
        Text(label),
        LinearProgressIndicator(
          value: percentage,
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
