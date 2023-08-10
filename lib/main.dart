import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int noteNum) async{
    final player = AudioPlayer();
    await player.setSourceAsset('note$noteNum.wav');
    player.resume();
  }

  Expanded soundKey({int noteNumm=1, Color noteColor=Colors.white}){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(noteColor),
        ),
        onPressed: ()  {
          playsound(noteNumm);
        },
        child: Text(''),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              soundKey(noteNumm:1, noteColor: Colors.red),
              soundKey(noteNumm:2, noteColor: Colors.orange),
              soundKey(noteNumm:3, noteColor: Colors.yellow),
              soundKey(noteNumm:4, noteColor: Colors.green),
              soundKey(noteNumm:5, noteColor: Colors.cyan),
              soundKey(noteNumm:6, noteColor: Colors.blue),
              soundKey(noteNumm:7, noteColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}


//
//
// Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
// ),
// onPressed: ()  {
// playsound(2);
// },
// child: Text(''),
// ),
// ),
// Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
// ),
// onPressed: ()  {
// playsound(3);
// },
// child: Text('') ,
//
// ),
// ), Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
// ),
// onPressed: ()  {
// playsound(4);
// },
// child: Text(''),
// ),
// ), Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
// ),
// onPressed: ()  {
// playsound(5);
// },
// child: Text(''),
// ),
// ), Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
// ),
// onPressed: ()  {
// playsound(6);
// },
// child: Text(''),
// ),
// ), Expanded(
// child: TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
// ),
// onPressed: ()  {
// playsound(7);
// },
// child: Text(''),
// ),
// ),