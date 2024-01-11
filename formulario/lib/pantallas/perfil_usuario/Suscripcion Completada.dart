import 'package:flutter/material.dart';
import 'package:formulario/pantallas/perfil_usuario/MenuPrincipal.dart';


class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Fondo negro
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Suscripcion completada exitosamente',
                style: TextStyle(
                  fontSize: 30, // Ajusta el tamaño de la fuente
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Color de la fuente
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navegar a la otra pantalla cuando se presiona la imagen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuDesplegable()),
                  );
                },
                child: Image.asset(
                  'assets/P.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navegar a la otra pantalla cuando se presiona la imagen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuDesplegable()),
                      );
                    },
                    child: Image.asset(
                      'assets/F.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
