import 'package:flutter/material.dart';

void main() => runApp(new MyfirstApp());
// Esegui una app e metti al centro un blocco di testo con direzione left to right


//Statelesswidget è un interfaccia per widget che non cambiano stato

class MyfirstApp extends StatelessWidget{
  final String myText = "Hello World!"; //non puoi più modificare quella particolare stringq
  int i =0;
 /*Piccolo appunto di final diverso da const
  Usando ad esempio random con const non puoi sapere il valore con final il valore random viene messo e poi mai più modificato
  In breve se usi random con const ti da errore è un ossimoro, mentre con final non è cosi */

  @override
  Widget build(BuildContext context) {
    return MaterialApp ( 
    home: Scaffold ( 
    body: Container(
      color: Colors.orange,
      //applica il valore 36  di padding a tutti i 4 i margini
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //asse ortogonale (asse x per column) si espande verso il centro (sembra il background cioè tutto lo schermo si colora di arancione)
        mainAxisAlignment: MainAxisAlignment.center, //asse principale (asse y per column) (porta al centro il testo verso sinistra)
        children: <Widget>[
          Text(this.myText),
          Text(this.myText),
          Text(this.myText)
      ],)
      )
    )
      );  }



}