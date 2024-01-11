import 'package:flutter/material.dart';
import 'package:formulario/pantallas/formulario/form_parte1.dart';

class PantallaInicio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:ListView(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Responde a las siguientes preguntas para poder conocerte y ayudarte a mejorar tu salud ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Colors.brown,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/imgs/escoger.png'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  IconButton(
                    icon: Image.asset('assets/icons/sig.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => FormPart1()));
                    },
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}