import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class Edad extends StatefulWidget {
  @override
  State<Edad> createState(){
    return StateEdad();
  }
}
class StateEdad extends State<Edad> {
  final FormData formData = FormData(); // Instancia del Singleton
  String? _EdadSeleccionada;

  var _items = [
    '15-18 años', '19-22 años', '23-26 años', '27-30 años', '31-33 años',
    '34-37 años', '38-41 años', '42-45 años', '46-49 años', '50-53 años',
    '54-57 años', '60-63 años', '64-67 años', '70-73 años'
  ];

  @override
  void initState() {
    super.initState();
    _EdadSeleccionada = formData.edad_C.text; // Obtener el valor actual del controlador de texto
    _EdadSeleccionada = _items.isNotEmpty ? _items[0] : null; //Si esta vacio, le da el primer valor de items
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
                    _EdadSeleccionada = newValue!;
                    formData.edad_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.edad_C.text, //Muestra el valor actual del controlador
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