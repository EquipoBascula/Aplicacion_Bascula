//Importa la biblioteca material.dart para elementos de la interfaz de usuario y 
//la clase FormData para gestionar datos del formulario.
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
//Widget Stateful que crea un menú desplegable para seleccionar la lesion.
//Mantiene el estado de la opción seleccionada y actualiza el controlador de texto asociado.
class Lesion extends StatefulWidget {
  @override
  State<Lesion> createState(){
    return StateLesion();
  }
}
//Gestiona el estado interno del widget Lesion.
class StateLesion extends State<Lesion> {
  //Instancia de la clase FormData para acceder a los controladores de texto.
  final FormData formData = FormData(); // Instancia del Singleton
  String? _LesionSeleccionada;
  //opciones que el usuario podra seleccionar
  var _items = ['Ninguna', 'En mi tren superior', 'En mi tren inferior'];

  @override
  void initState() {
    super.initState();
    _LesionSeleccionada = formData.lesion_C.text; // Obtener el valor actual del controlador de texto
    _LesionSeleccionada = _items.isNotEmpty ? _items[0] : null; //Si esta vacio, le da el primer valor de items
  }
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 75, right: 75),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[200],
                  border: Border.all(color: Colors.blueGrey, width: 2),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: DropdownButton(
                items: _items.map((String item) {
                  return DropdownMenuItem(
                      value: item,
                      child: Text(item)
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _LesionSeleccionada = newValue!;
                    formData.lesion_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.lesion_C.text, //Muestra el valor actual del controlador
                dropdownColor: Colors.cyan[100],
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 17,
                isExpanded: true,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                underline: SizedBox(),
              ),

            )
        )
    );
  }
}
