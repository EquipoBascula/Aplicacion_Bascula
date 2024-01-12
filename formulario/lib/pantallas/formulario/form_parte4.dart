//Importa bibliotecas para elementos de interfaz, navegación y widgets para la selección de opciones.
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/agradecimiento.dart';
import 'package:formulario/pantallas/formulario/form_parte3.dart';
import 'package:formulario/pantallas/funciones/funciones_formulario/Lista_Alimentos_Alergias.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class FormPart4 extends StatelessWidget {
  final FormData formData = FormData(); // Instancia del Singleton

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
                    Text(
                      'Menciona los alimentos a los que eres alergico',
                      style: TextStyle(fontSize: 24, color: Colors.amber[900], ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    lista_alimentos(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            //Limpiar los datos de alimentos
                            formData.setaLacteos(false);
                            formData.setaTrigo(false);
                            formData.setaSoya(false);
                            formData.setaPescado(false);
                            formData.setaFrutosSecos(false);
                            formData.setaMani(false);
                            formData.setaMariscos(false);
                            formData.setaHuevos(false);
                            formData.otroAlimento_C.text = "";
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => FormPart3()));
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
                             //Utiliza Navigator.push() para navegar a otras pantallas.                                         
                                (context) => Agradecimiento()));
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
