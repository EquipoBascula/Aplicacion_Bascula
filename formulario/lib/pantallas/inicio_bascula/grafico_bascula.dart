import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraficoBascula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      // Configuración del gráfico de pastel
      PieChartData(
        // Datos de las secciones del gráfico
        sections: [
          PieChartSectionData(
            value: 70, // Valor de la sección (porcentaje)
            color: Colors.blue, // Color de la sección
            title: 'Peso', // Etiqueta de la sección
          ),
          PieChartSectionData(
            value: 23.3,
            color: Colors.red,
            title: 'Grasa',
          ),
          PieChartSectionData(
            value: 18,
            color: Colors.green,
            title: 'Músculo',
          ),
        ],
      ),
    );
  }
}