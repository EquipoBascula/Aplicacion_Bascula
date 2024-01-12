//Importa la biblioteca material.dart para elementos de la interfaz de usuario y 
//la clase FormData para gestionar datos del formulario.
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
//Widget Stateful que crea un menú desplegable para seleccionar la experiencia.
//Mantiene el estado de la opción seleccionada y actualiza el controlador de texto asociado.
class Experiencia extends StatefulWidget {
  @override
  State<Experiencia> createState(){
    return StateExperiencia();
  }
}
//Gestiona el estado interno del widget Experiencia.
class StateExperiencia extends State<Experiencia> {
  //Instancia de la clase FormData para acceder a los controladores de texto.
  final FormData formData = FormData(); // Instancia del Singleton
  String? _ExperienciaSeleccionada;
  var _items = ['Ninguna', '1 a 4 meses','5 a 6 meses', '9 meses a 1 año','2 a 3 años'];

  @override
  void initState() {
    super.initState();
    _ExperienciaSeleccionada = formData.experiencia_C.text; // Obtener el valor actual del controlador de texto
    _ExperienciaSeleccionada = _items.isNotEmpty ? _items[0] : null; //Si esta vacio, le da el primer valor de items
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
                    _ExperienciaSeleccionada = newValue!;
                    formData.experiencia_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.experiencia_C.text, //Muestra el valor actual del controlador
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
