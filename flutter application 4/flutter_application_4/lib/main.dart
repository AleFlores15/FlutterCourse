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
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: cuerpo()
    );
  }
}

// para que el codigo sea legible, podemos crear funciones que retornen widgets 
Widget cuerpo(){
  return Container(
    // decoration es para el fondo
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1536195892759-c8a3c8e1945e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YWVzdGhldGljfGVufDB8fDB8fA%3D%3D&w=1000&q=80")
       ,fit: BoxFit.cover)
       
    ),
    // si no le ponemos center al texto de abajo no dará la imagen porque lo que hace es tomar todo el espacio que tiene el container
    //al centrar el container, le estamos dando más espacio
    child: Center(
      //como es una columna, se irá el sign in hasta arriba sin el main axis
      //xon el main axis centra
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campousuario(),
          campopass(),
          //sized box es para separar
          SizedBox(height: 10),
          botonEntrar()


      ],
      
      ),

    ),

  );
}

Widget nombre(){
  return( Text("Sign In", style:  TextStyle(color: Colors.white, fontSize: 30),)); 
}
Widget campousuario(){
  return Container(
    //symmetric pide horixonal y verticalment
    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget campopass(){
  return Container(
    //symmetric pide horixonal y verticalment
    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
    child: TextField(
      // la de abajo es para ocultar la contrase;a
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

/*

Si alguien ve este video en 2021 con flutter 2  FlatButton, RaisedButton y OutlineButton  han sido reemplazados por TextButton, ElevatedButton, and OutlinedButton respectivamente, la función debotonentrar() sería.
 Widget botonEntrar() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
      onPressed: () {},
      child: Text("Log in"));
}

*/


 Widget botonEntrar() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
 
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
      onPressed: () {},
      child: Text("Log in"));
}