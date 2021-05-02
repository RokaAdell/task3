import 'package:flutter/material.dart';
import 'dart:math';
 
void main() {
  return runApp(Dice());
   
}
 
class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}
 
class _DiceState extends State<Dice> {
  int dice_no = 1;

  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }
 
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('GFG | Dice',
          style:TextStyle(fontSize: 25),),
          
           centerTitle: true,
          backgroundColor: Colors.deepPurple
        ),
        body:Center(child: Container(
          width: 600,
          height: 400,
          child: FlatButton(
            child: Image.asset('images/sky$dice_no.jpg'),
            onPressed: () {
              update();
            },
          ),

      ) ,
      ),
    ),
     );
  
    
  }
}