import 'package:flutter/material.dart';
//Almacena los controladores de texto de un formulario.
//Implementa el patrón Singleton para garantizar que solo exista una instancia de la clase.
// Clase Singleton para almacenar controladores de texto
class FormData {
  static final FormData _instance = FormData._internal();
  //Método de fábrica para obtener la única instancia de la clase.
  factory FormData() {
    return _instance;
  }
  //Constructor privado para evitar la creación directa de instancias de la clase.
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
  //Indica si el usuario tiene alergias alimentarias.
  bool hayAlergias = false;
  //Indican las alergias específicas del usuario.
  bool aLacteos = false;
  bool aTrigo = false;
  bool aSoya = false;
  bool aPescado = false;
  bool aFrutosSecos = false;
  bool aMani = false;
  bool aMariscos = false;
  bool aHuevos = false;

  //Se utilizan para guardar las opciones seleccionadas por el usuario en el formulario.
  void sethayAlergias(bool value) {
    //Establecer el valor dependiendo de la eleccion
    hayAlergias = value;
  }

  void setaLacteos(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aLacteos = value;
  }

  void setaTrigo(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aTrigo = value;
  }

  void setaSoya(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aSoya = value;
  }

  void setaPescado(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aPescado = value;
  }

  void setaFrutosSecos(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aFrutosSecos = value;
  }

  void setaMani(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aMani = value;
  }

  void setaMariscos(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aMariscos = value;
  }

  void setaHuevos(bool value) {
    //Establecer el valor dependiendo de la eleccion
    aHuevos = value;
  }
}
