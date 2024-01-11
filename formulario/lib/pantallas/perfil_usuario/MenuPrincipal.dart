import 'package:flutter/material.dart';
import 'package:formulario/pantallas/perfil_usuario/Acerca.dart';
import 'package:formulario/pantallas/perfil_usuario/CodigoQR.dart';

class MenuDesplegable extends StatelessWidget {
  void mostrarMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Encabezado con información del usuario
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre: Usuario',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Usuario: MiUsuario',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Correo Electrónico: correo@example.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              // Opciones del menú
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
