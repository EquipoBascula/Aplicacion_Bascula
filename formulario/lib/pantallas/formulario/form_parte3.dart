import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/form_parte2.dart';
import 'package:formulario/pantallas/formulario/form_parte4.dart';
import 'package:formulario/pantallas/formulario/agradecimiento.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Seleccion_Tiempo_Entrenamiento.dart';

class FormPart3 extends StatelessWidget {
  final FormData formData = FormData(); // Instancia del Singleton
  bool alergia = false;
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
                    SizedBox(height: 90),
                    Text(
                      '¿Cuánto tiempo dispones para hacer ejercicio?',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900], ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    TiempoE(),
                    SizedBox(height: 40),
                    Text(
                      '  ¿Eres alergico a algún alimento?',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900], ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 70, right: 20),
                        child: LiteRollingSwitch(
                          value: false,
                          width: 220,
                          textOn: 'Si, soy alergico',
                          textOff: 'No soy alergico',
                          colorOn: Colors.blueAccent,
                          colorOff: Colors.lightBlueAccent,
                          iconOn: Icons.done,
                          iconOff: Icons.done,
                          textSize: 20,
                          onChanged: (bool state) {
                            this.alergia = state;
                            formData.sethayAlergias(alergia);
                          },
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onTap: () {},
                        ),
                      ),

                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => FormPart2()));
                          },
                          icon: SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/icons/prev.png'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if(alergia){
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => FormPart4()));
                            }else{
                              //EnvioDatosFormulario().enviarDatos(DatosForm);
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => Agradecimiento()));
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