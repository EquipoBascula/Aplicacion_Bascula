//Importa la biblioteca intl para formatear fechas, material.dart para elementos 
//de la interfaz de usuario y la clase FormData para gestionar datos del formulario.
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
//Widget Stateful que permite al usuario seleccionar una fecha de un calendario.
class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  @override
  State<DatePicker> createState() => DatePickerState();
}
//Gestiona el estado interno del widget DatePicker.
class DatePickerState extends State<DatePicker> {
  final FormData formData = FormData(); // Instancia del Singleton
  TextEditingController _date = TextEditingController();

  @override
  void initState() {
    //Se ejecuta al crear el widget.
    //Obtiene el valor inicial del controlador de texto fecha_C y lo asigna al controlador _date.
    super.initState();
    String currentValue = formData.fecha_C.text;
    _date.text = currentValue.isNotEmpty ? currentValue : '';
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(

          controller: _date,
          decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today_rounded),
              labelText: "Selecciona la fecha"),
          onTap: () async {
          //  Se ejecuta al hacer clic en el campo de texto, muestra un selector de fecha.
            DateTime? pickddate = await showDatePicker(

              context: context,
              initialDate: DateTime.now(),
              //Permite al usuario seleccionar una fecha dentro del rango de 1950 a 2030.
              firstDate: DateTime(1950),
              lastDate: DateTime(2030),

            );
            if (pickddate != null) {
              setState(() {
                //Formatea la fecha como "yyyy-MM-dd" y la asigna al controlador de texto _date.
                _date.text = DateFormat('yyyy-MM-dd').format(pickddate);
                formData.fecha_C.text = _date.text; //Se guarda la fecha en el controlador
              });
            }
          },
        ),
      ),
    );
  }
}
