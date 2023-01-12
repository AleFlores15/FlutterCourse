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
      //column reciben children varios hijos, que basicamente es una rreglo de widgets, van dentro de los corchetes
      // lo que hace column es poner los hijos uno encima de otro
      body: Column(
        /*
         lo comentado abajo se puede hacer con row, es algo parecido a bootstrap

        */
        //con main axis el eje principal del elemento se alinea , y lo que hizo es centrar, pero en columna
        // es para todos los widgets de la columna, puedes ir jugando con ellos
        mainAxisAlignment: MainAxisAlignment.center,

        // para que se vea comenta la linea de abajo y la de arriba cuando veas
        // en el main axis size, lo que hace es centrar en columna tambien pero pasa que centra con min en el minimo de espacio que hay
        //y ahora la columna mide menos
        //con max, toma toda la pantalla posible

        mainAxisSize: MainAxisSize.max,
        children: [
        Container(
          height: 50,
          // aqui se da todo el tama;o del ancho del contexto que basicamente es la aplicacion completa
          // como con media query le estamos dando todo el ancho a lo horizontal, la columna se vuelve gorda y como pusimos arrina en el
          //mainaxisaligment que los hijos de esa columna esten alineados en su eje principal, entonces se centran solo los hijos widgets
          // como tal el container esta centrado, no lo que leva dentro
          width: MediaQuery.of(context).size.width,
          //para centrar el contenido del container
          child: Text("hola 1", textAlign: TextAlign.center),
        ),
        Text("hola 2"),
        Text("hola 3")
        //con row no se puede hacer lo mismo porque recordemos que pone un wodget al lado de otro

      ],)
      

      // row lo que hace es poner un hijo al lado de otro
      /*
       body: Row(children: [
        Text("hola 1"),
        Text("hola 2")

      ],)
      */

    );
  }
}