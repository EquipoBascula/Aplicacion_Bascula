import 'package:flutter/material.dart';
import 'package:formulario/pantallas/inicio_bascula/pantalla_bascula.dart';
import 'package:formulario/supabase/EnvioDatos/EnvioDatosFormulario.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';

class Agradecimiento extends StatelessWidget {
  final FormData formData = FormData(); // Instancia del Singleton
  EnvioDatosFormularioPrincipal supabase = EnvioDatosFormularioPrincipal();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 90),
                Text(
                  '¡Gracias por Responder!',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/imgs/Logo.png'),
                  ),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      supabase
                          .enviarDatosPersonales(); //Envio de datos personales del usuario a la BD
                      supabase
                          .enviarDatosFisicos(); //Envio de datos fisicos del usuario a la BD
                      if (formData.hayAlergias == true) {
                        supabase.enviarDatosAlergias();
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PantallaBascula()));
                    },
                    icon: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset('assets/icons/sig.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
