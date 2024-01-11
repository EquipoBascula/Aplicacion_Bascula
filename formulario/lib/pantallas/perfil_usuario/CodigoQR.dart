import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:formulario/pantallas/perfil_usuario//Suscripcion.dart';
import 'package:formulario/pantallas/perfil_usuario/Suscripcion Completada.dart';

class QR extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "QR Code Scanner",
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: QRCodeWidget(
      ),
    );
  }
}
class QRCodeWidget extends StatefulWidget {
  const QRCodeWidget({super.key});
  @override
  State<QRCodeWidget> createState() => _QRCodeWidgetState();
}

class _QRCodeWidgetState extends State<QRCodeWidget> {
  final GlobalKey qrKey=GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result="";
  @override
  void dispose(){
    controller?.dispose();
    super.dispose();  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacionDiagonal(),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ), ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text("Centra el QR del Gimnasio al que deseas suscriberte",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text("Resultado de Escaneo: $result",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed:() async {
                    if(result.isNotEmpty){
                      final Uri _url= Uri.parse(result);
                      await launchUrl(_url);
                    }
                  },
                  child: Text("Abrir"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar hacia la nueva pantalla al presionar el botón
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp2()),
                    );
                  },
                  child: Text("Aceptar"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}