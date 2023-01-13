import 'package:flutter/material.dart';

void main() {
  // runapp es para ejecutar y dentro le ponemos el widget
  runApp(MyWidget());
}
// EL WIFGET se llama mywidget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //material es un patron de dise;o de google es la apariencia que tendra, es el front de google
    // y pide parametros como tittle
    return MaterialApp(
      title: "Mi App",
      home: inicio(),
    );
  }
}




class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  // aqui decimos lo que contiene, aqui se llama a un widget que contiene la estructura tardicional que tiene una app
  //se llama scaffold
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Filas columnas y botones"),
      ),

      // body: Center(
      //   child: ElevatedButton(
      //     //hay funciones anonimas
      //     child: Text("hola"), onPressed: (){
      //       print("secso");
      //     }
      //   ),
      // )

      body: Center(
        child: ElevatedButton(
          // se puede poner un row dentro de un boton para poner un icono y texto al lado
          child: Row(
            // la linea de abajo es para que el boton no ocupe todo el ancho de pantalla
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.access_alarm),
              // para darle espacios
              SizedBox(
                width: 15,
              ),
              Text("alarma")
            ],
          ),
          onPressed: (() => print("secso")),
        ),
      )
      // si queremos que el icono este arriba del texto es column

    );
  }
}