import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/form_parte2.dart';
import 'pantallas/inicio_bascula/pantalla_bascula.dart';
import 'package:formulario/pantallas/Pantalla_inicio.dart';
import 'package:formulario/pantallas/tipo.dart';
import  'pantallas/inicio_bascula/diagrama_circular.dart';
import  'pantallas/inicio_bascula/diagrama_lineal.dart';
import  'pantallas/inicio_bascula/datos_diagramas.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Tipo de Usuario',
    home: const Tipo(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent, // Hacemos el fondo del Scaffold transparente
    ),
    builder: (context, child) {
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.orange], // Se tiene la paleta de colores
          ),
        ),
        child: child,
      );
    },
    );
  }
}