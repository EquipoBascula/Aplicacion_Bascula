import 'package:flutter/material.dart';
import 'package:formulario/pantallas/perfil_usuario/Acerca.dart';
import 'package:formulario/pantallas/perfil_usuario/CodigoQR.dart';

class MenuDesplegable extends StatelessWidget {
  void mostrarMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Cerrar Sesión'),
                onTap: () {
                  print('Cerrar Sesión');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Ver Código QR'),
                onTap: () {
                  navigateToQRScreen(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Acerca de'),
                onTap: () {
                  navigateToAboutScreen(context);
                  Navigator.pop(context);
                },
              ),
              // Agrega más opciones según sea necesario
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        mostrarMenu(context);
      },
    );
  }

  void navigateToQRScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QR()),
    );
  }

  void navigateToAboutScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AcercaDe()),
    );
  }
}