import 'package:flutter/material.dart';
import 'grafico_bascula.dart'; //Clase para el grafico
import 'dato_bascula.dart'; //Formato de los datos de la bascula
import 'barra_navegacion_diagonal.dart'; //Barra de navegacion superior

class PantallaBascula extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de navegación diagonal superior
      appBar: BarraNavegacionDiagonal(),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16), // Espacio en blanco
          // Datos de la báscula con padding horizontal


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), //padding de 16 pixeles en ambos lados
            child: DatoWidget(titulo: 'Peso', valor: '70 kg', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'BMI', valor: '23.3', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'Grasa', valor: '18%', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'Grasa', valor: '18%', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'Grasa', valor: '18%', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'Grasa', valor: '18%', alerta: 'Alerta'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DatoWidget(titulo: 'Grasa', valor: '18%', alerta: 'Alerta'),
          ),
          SizedBox(height: 16), // Espacio en blanco
          // Gráfico de la báscula en un contenedor
          Container(
            height: 300,
            child: GraficoBascula(),
          ),
        ],
      ),
      // Barra de navegación inferior con tres botones
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            //Boton 1 (bascula)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 1");
                  // Acción para el Botón 1
                },
                child: Container(
                  height: 60,
                  color: Colors.brown,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/icono_1.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ),
            //Boton 2 (ejercicios)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 2");
                  // Acción para el Botón 2
                },
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/icono_2.png',
                      width: 29,
                      height: 29,
                    ),
                  ),
                ),
              ),
            ),
            //Boton 3 (comida)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Boton 3");
                  // Acción para el Botón 3
                },
                child: Container(
                  height: 60,
                  color: Colors.orange,
                  child: Center(
                    child: Image.asset(

                      'assets/icons/icono_3.png',
                      width: 29,
                      height: 29,
                    ),
                  ),
                ),              ),
            ),
          ],
        ),
      ),
    );
  }
} //Class
