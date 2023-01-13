import 'package:flutter/material.dart';

void main() {
  // runapp es para ejecutar y dentro le ponemos el widget
  runApp(MyWidget1());
}
// EL WIFGET se llama mywidget
class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    //material es un patron de dise;o de google es la apariencia que tendra, es el front de google
    // y pide parametros como tittle
    return MaterialApp(
      title: "pag2",
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
      appBar: AppBar(title: Text("pag2"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("si pag 2"),
            ElevatedButton(onPressed: ((() => Navigator.pop(context))) , child: Text("Pagina 2"))

          ],),
      )
    );
  }
}
