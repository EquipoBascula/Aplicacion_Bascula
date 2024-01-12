//Importa la biblioteca material.dart para elementos de la interfaz de usuario y 
//la clase FormData para gestionar datos del formulario.
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
//Widget Stateful que crea un menú desplegable para seleccionar la altura.
//Mantiene el estado de la opción seleccionada y actualiza el controlador de texto asociado.
class Altura extends StatefulWidget {
  @override
  State<Altura> createState(){
    return StateAltura();
  }
}
//Gestiona el estado interno del widget Altura.
class StateAltura extends State<Altura> {
  //Instancia de la clase FormData para acceder a los controladores de texto.
  final FormData formData = FormData();

  String? _AlturaSeleccionada;
//opciones que el usuario podra seleccionar
  var _items = ['1.40 m','1.43 m','1.45 m','1.47 m','1.50 m','1.53 m','1.55 m','1.57 m',
    '1.60 m','1.63 m','1.65 m','1.67 m',
    '1.70 m','1.73 m','1.75 m','1.77 m',
    '1.80 m','1.83 m','1.85 m','1.87 m',
    '1.90 m','1.93 m','1.95 m','1.97 m',
    '2 m'];

  @override
  void initState() {
   // Obtiene el valor inicial del controlador de texto altura_C y lo asigna a _AlturaSeleccionada.
    super.initState();
   
    _AlturaSeleccionada = formData.altura_C.text; // Obtener el valor actual del controlador de texto
    _AlturaSeleccionada = _items.isNotEmpty ? _items[0] : null;
    //Establece la primera opción de la lista como predeterminada si la lista no está vacía.
  }
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 100, right: 50),
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
                    _AlturaSeleccionada = newValue!;
                    formData.altura_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.altura_C.text, //Muestra el valor actual del controlador
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
