import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  @override
  State<DatePicker> createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  final FormData formData = FormData(); // Instancia del Singleton
  TextEditingController _date = TextEditingController();

  @override
  void initState() {
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
            DateTime? pickddate = await showDatePicker(

              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2030),

            );
            if (pickddate != null) {
              setState(() {
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