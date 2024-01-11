import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/form_parte2.dart';
import 'pantallas/inicio_bascula/pantalla_bascula.dart';
import 'package:formulario/pantallas/Pantalla_inicio.dart';
import 'package:formulario/pantallas/tipo.dart';
import  'pantallas/inicio_bascula/diagrama_circular.dart';
import  'pantallas/inicio_bascula/diagrama_lineal.dart';
import  'pantallas/inicio_bascula/datos_diagramas.dart';
//Esta función es el punto de entrada de la aplicación. Llama a la función runApp() 
//para iniciar la aplicación.
void main() {
  runApp(MyApp());
}
//La clase MyApp() representa la aplicación Flutter. Hereda de la clase StatelessWidget.
class MyApp extends StatelessWidget {

  @override
  //El método build() se utiliza para construir la interfaz de usuario de la aplicación.
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Tipo de Usuario',
    //La pantalla Tipo() se utiliza para mostrar la pantalla para seleccionar el tipo de usuario.
    //Seleccionarlo sera el inicio de la aplicacion del espejo
    home: const Tipo(),
      // Evitar que se muestra la bandera de modo de depuración.
    debugShowCheckedModeBanner: false,
    //La propiedad theme se establece en una instancia de la clase ThemeData. 
    //Esta clase se utiliza para configurar el tema de la aplicación. 
    //En este caso, se establece el fondo del Scaffold en transparente.
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
