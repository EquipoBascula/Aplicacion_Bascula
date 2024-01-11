import 'package:flutter/material.dart';
import 'MenuPrincipal.dart';

class AcercaDe extends StatefulWidget {
  const AcercaDe({super.key});
  @override
  State<AcercaDe> createState() => _AcercaDeState();
}
class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de nosotros"),
      ),
      body: Column(
        children: [
          _cuerpo(),
          _Texto(),
          _Boton(),
        ],
      ),
    );
  }
  Widget _Boton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuDesplegable()),
          );
        },
        child: Image.asset(
          'assets/flechas-izquierda.png',
          height: 50.0,
          width: 50.0,
        ),
      ),
    );
  }
  Widget _cuerpo() {
    return SizedBox(
      height: 250.0,
      width: 350.0,
      child: Image.asset('assets/Logo.png'),
    );
  }
  Widget _Texto() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey, // Color de fondo gris
      ),
      child: Text(
        "Somos un grupo de trabajo dedicado a crear Software para que los gimnasios puedan mejorar en ámbito de tecnología",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
