import 'package:flutter/material.dart';

// Clase Singleton para almacenar controladores de texto
class FormData {
  static final FormData _instance = FormData._internal();
  factory FormData() {
    return _instance;
  }
  FormData._internal();

  //Fomulario parte 1
  TextEditingController nombre_C = TextEditingController();
  TextEditingController fecha_C = TextEditingController();
  TextEditingController edad_C = TextEditingController(text: '15-18 años');
  TextEditingController genero_C = TextEditingController(text: 'Masculino');
  TextEditingController altura_C = TextEditingController(text: '1.40 m');
  TextEditingController pais_C = TextEditingController(text: 'México');

  //Formulario parte 2
  TextEditingController discapacidad_C = TextEditingController(text: 'Ninguna');
  TextEditingController lesion_C = TextEditingController(text: 'Ninguna');
  TextEditingController experiencia_C = TextEditingController(text: 'Ninguna');

  //Formulario parte 3
  TextEditingController tiempoEntrenamiento_C = TextEditingController(
      text: '20 min');

  //Fomulario parte 4
  TextEditingController otroAlimento_C = TextEditingController(text: '');
  bool hayAlergias = false;
  bool aLacteos = false;
  bool aTrigo = false;
  bool aSoya = false;
  bool aPescado = false;
  bool aFrutosSecos = false;
  bool aMani = false;
  bool aMariscos = false;
  bool aHuevos = false;

  void sethayAlergias(bool value) {
    //Establecer el valor dependiendo de la eleccion
    hayAlergias = value;
  }

  void setaLacteos(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aLacteos = value;
  }

  void setaTrigo(bool value) {
    aTrigo = value;
  }

  void setaSoya(bool value) {
    aSoya = value;
  }

  void setaPescado(bool value) {
    aPescado = value;
  }

  void setaFrutosSecos(bool value) {
    aFrutosSecos = value;
  }

  void setaMani(bool value) {
    aMani = value;
  }

  void setaMariscos(bool value) {
    aMariscos = value;
  }

  void setaHuevos(bool value) {
    aHuevos = value;
  }
}