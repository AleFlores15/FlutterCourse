import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/pagina2.dart';

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
      title: "Mi App1",
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("a"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("si"),
            ElevatedButton(onPressed: (() =>  
           //navigator es para mandarlo a otra pag
            Navigator.push(context,MaterialPageRoute(builder: (context)=> MyWidget1()))) , child: Text("Pagina 2"))

          ],),
      )
    );
  }
}
