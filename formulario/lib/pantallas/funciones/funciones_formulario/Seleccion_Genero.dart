import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class Genero extends StatefulWidget {
  @override
  State<Genero> createState(){
    return StateGenero();
  }
}
class StateGenero extends State<Genero> {
  final FormData formData = FormData();

  String? _GeneroSeleccionado;
  var _items = ['Masculino', 'Femenino', 'Otro'].toList();

  @override
  void initState() {
    super.initState();
    _GeneroSeleccionado = formData.genero_C.text; // Obtener el valor actual del controlador de texto
    _GeneroSeleccionado = _items.isNotEmpty ? _items[0] : null; //Si esta vacio, le da el primer valor de items
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
                    _GeneroSeleccionado = newValue!;
                    formData.genero_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.genero_C.text, //Muestra el valor actual del controlador
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