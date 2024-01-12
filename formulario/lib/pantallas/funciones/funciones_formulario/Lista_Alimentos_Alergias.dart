//Importa la biblioteca material.dart para elementos de la interfaz de usuario y 
//la clase FormData para gestionar datos del formulario.
import 'package:flutter/material.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
//Variables booleanas que indican si el usuario tiene alergia a cada alimento.
bool? lacteos = false;
bool? trigo = false;
bool? soya = false;
bool? pescado = false;
bool? frutosSecos = false;
bool? mani = false;
bool? mariscos = false;
bool? huevos = false;
bool otro = false;

class lista_alimentos extends StatefulWidget{
  //Widget Stateful que crea una lista de casillas de verificación para seleccionar alergias alimentarias.
  //Muestra un campo de texto adicional para especificar "otro" alimento si se selecciona la casilla correspondiente.
  const lista_alimentos({Key? key}) : super(key: key);
  @override
  State<lista_alimentos> createState() => seleccionListaAlimentos();
}

//Gestiona el estado interno del widget lista_alimentos
class seleccionListaAlimentos extends State<lista_alimentos>{
  final FormData formData = FormData(); // Instancia del Singleton
  final TextEditingController otroalimento = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Column(
      children: [Padding( padding: const EdgeInsets.fromLTRB(85,0,85,0),
        child: Column(
          children: [ Row( // CheckBox Lacteos
            children: [ Transform.scale(scale: 1.7,
              child: Checkbox( value: lacteos,
                onChanged: (bool? nval) {setState(() {lacteos = nval;
                //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.
                formData.setaLacteos(lacteos!);});},
                activeColor: Colors.cyan,
                checkColor: Colors.white,
                shape: CircleBorder(),
              ),
            ),
              Text("Lacteos",style: TextStyle(fontSize: 20,color: Colors.indigo)),
            ],
          ),
            Row( // CheckBox Trigo
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: trigo,
                  onChanged: (bool? nval) {setState(() {trigo = nval;
                  //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.
                  formData.setaTrigo(trigo!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Trigo",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Soya
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: soya,
                  onChanged: (bool? nval) {setState(() {soya = nval;
                 //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                       
                  formData.setaSoya(soya!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Soya",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Pescado
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: pescado,
                  onChanged: (bool? nval) {setState(() {pescado = nval;
                  //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                      
                  formData.setaPescado(pescado!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Pescado",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Frutos Secos
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: frutosSecos,
                  onChanged: (bool? nval) {setState(() {frutosSecos = nval;
                 //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                       
                  formData.setaFrutosSecos(frutosSecos!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Frutos Secos",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Maní
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: mani,
                  onChanged: (bool? nval) {setState(() {mani = nval;
                  //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                      
                  formData.setaMani(mani!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Maní",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Mariscos
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: mariscos,
                  onChanged: (bool? nval) {setState(() {mariscos = nval;
                  //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                      
                  formData.setaMariscos(mariscos!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Mariscos",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Huevos
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: huevos,
                  onChanged: (bool? nval) {setState(() {huevos = nval;
                  //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.                                      
                  formData.setaHuevos(huevos!);});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Huevos",style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
            Row( // CheckBox Huevos
              children: [ Transform.scale(scale: 1.7,
                child: Checkbox( value: otro,
                  onChanged: (bool? nval) {setState(() {otro = !otro;});},
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                  shape: CircleBorder(),
                ),
              ),
                Text("Otro", style: TextStyle(fontSize: 20,color: Colors.indigo)),
              ],
            ),
          ],
        ),
      ),
        Container(
            width: 280,
            child: otro?
            TextField(
              controller: formData.otroAlimento_C,
              //actualiza la variable booleana correspondiente y llama a un método 
              // de la clase FormData para guardar el valor en el controlador de texto asociado.
              decoration: InputDecoration(
                hintText: 'Ingresa otro alimento',
                fillColor: Colors.blueGrey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ):Text("")

        ),
      ],
    );

  }

}
