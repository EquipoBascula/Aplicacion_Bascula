import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/form_parte3.dart';
import 'package:formulario/pantallas/formulario/form_parte1.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Discapacidad.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Lesion.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Experiencia.dart';

class FormPart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text(
            'Datos Físicos',
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
                    SizedBox(height: 15),
                    Text(
                      '¿Tienes alguna discapacidad que afecte tu movilidad corporal?',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900], ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Discapacidad(),
                    SizedBox(height: 25),
                    Text(
                      '¿Presentas alguna lesión en tu cuerpo?',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900],),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Lesion(),
                    SizedBox(height: 25),
                    Text(
                      '¿Tienes experiencia previa realizando ejercicio?',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900],),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Experiencia(),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => FormPart1()));
                          },
                          icon: SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/icons/prev.png'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => FormPart3()));
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