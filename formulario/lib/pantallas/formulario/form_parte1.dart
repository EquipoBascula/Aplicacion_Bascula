import 'package:flutter/material.dart';
import 'package:formulario/pantallas/Pantalla_inicio.dart';
import 'package:formulario/pantallas/formulario/form_parte2.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Calendario.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Pais.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Edad.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Genero.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Altura.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class FormPart1 extends StatelessWidget {

  final FormData formData = FormData(); // Instancia del Singleton
  var comFecha = new DatePicker();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Datos Personales',
              style: TextStyle(
                color: Colors.cyan[100],
                fontSize: 30,
              ),
            ),
            backgroundColor: Colors.cyan,
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900], ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370,
                        child: TextField(
                          controller: formData.nombre_C,
                          decoration: InputDecoration(
                            hintText: 'Ingresa tu nombre completo',
                            fillColor: Colors.blueGrey[200],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Fecha de nacimiento',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900]),
                      ),
                      SizedBox(height: 20),
                      comFecha,
                      SizedBox(height: 40),
                      Text(
                        'Edad',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900]),
                      ),
                      SizedBox(height: 10),
                      Edad(),
                      Text(
                        'Genero',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900]),
                      ),
                      SizedBox(height: 10),
                      Genero(),
                      Text(
                        'Altura',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900]),
                      ),
                      SizedBox(height: 10),
                      Altura(),
                      Text(
                        'Pais de Origen',
                        style: TextStyle(fontSize: 24, color: Colors.amber[900]),
                      ),
                      SizedBox(height: 10),
                      Pais(),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => PantallaInicio()));
                            },
                            icon: SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/icons/prev.png'),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              if( formData.nombre_C.text.isEmpty || formData.fecha_C.text.isEmpty){
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Campos requeridos'),
                                      content: Text('Por favor, completa todos los campos.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }else {
                                Navigator.push(
                                    context, MaterialPageRoute(builder:
                                    (context) => FormPart2()));
                              }
                            },
                            icon: SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/icons/sig.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}