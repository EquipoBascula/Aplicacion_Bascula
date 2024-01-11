import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class TiempoE extends StatefulWidget {
  @override
  State<TiempoE> createState(){
    return StateTiempoE();
  }
}
class StateTiempoE extends State<TiempoE> {
  final FormData formData = FormData(); // Instancia del Singleton
  String? _TiempoSeleccionado;
  var _items = ['20 min', '30 min', '40 min', '50 min', '1 hr', '+ 1 hr'];

  @override
  void initState() {
    super.initState();
    _TiempoSeleccionado = formData.tiempoEntrenamiento_C.text; // Obtener el valor actual del controlador de texto
    _TiempoSeleccionado = _items.isNotEmpty ? _items[0] : null; //Si esta vacio, le da el primer valor de items
  }
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 35, right: 35),
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
                    _TiempoSeleccionado = newValue!;
                    formData.tiempoEntrenamiento_C.text = newValue!; // Actualiza el controlador de texto
                  });
                },
                value: formData.tiempoEntrenamiento_C.text, //Muestra el valor actual del controlador
                dropdownColor: Colors.cyan[100],
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 30,
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