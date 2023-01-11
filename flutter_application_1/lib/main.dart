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
      // el appbar tambien pide cosas
      appBar: AppBar(
        title: Text("Mi App"),
      ),
      // tambien necesita un body y pide un child el center
      //importante con control ., pones column y así el body tiene varios hijos y poner varios widgets
      // poner varios containers
      //Hubo un cambio y fue que en vez de poner column, se pone list view, porque con column si el contenido no entra, la app no da,
      //pero con list view se puede dar scroll
      body: ListView(
        children: [
          Container( 
            //padding pone un borde al rededor de toda la imagen
          padding: EdgeInsets.all(20.0),
          child: Image.network("https://as01.epimg.net/meristation/imagenes/2022/07/21/noticias/1658389050_817312_1658389673_noticia_normal.jpg")),
          Container( 
            //padding pone un borde al rededor de toda la imagen
          padding: EdgeInsets.all(20.0),
          child: Image.network("https://as01.epimg.net/meristation/imagenes/2022/07/21/noticias/1658389050_817312_1658389673_noticia_normal.jpg")),

          Container( 
            //padding pone un borde al rededor de toda la imagen
          padding: EdgeInsets.all(20.0),
          child: Image.network("https://as01.epimg.net/meristation/imagenes/2022/07/21/noticias/1658389050_817312_1658389673_noticia_normal.jpg")),
 
          Container( 
            //padding pone un borde al rededor de toda la imagen
          padding: EdgeInsets.all(20.0),
          child: Image.network("https://as01.epimg.net/meristation/imagenes/2022/07/21/noticias/1658389050_817312_1658389673_noticia_normal.jpg")),
          // cuando el contenido se sale de la pantalla aparece unas lineas negras y amarillas, pasa si pones varias imagenes
 
        ],
      ),

    );
  }
}