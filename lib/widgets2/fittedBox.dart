import 'package:flutter/material.dart';

class FitBox extends StatefulWidget {
  const FitBox({ Key? key }) : super(key: key);

  @override
  _FitBoxState createState() => _FitBoxState();
}

class _FitBoxState extends State<FitBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fitted Box"),),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.pink,
          alignment: Alignment.center,
          //if you need to see the difference just remove the fittedbox widget
          child:const FittedBox(child: Text("hellow adi" , style: TextStyle(fontSize: 50.0),)),
          ),
        ),
    );
  }
}