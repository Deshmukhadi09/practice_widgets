import 'package:flutter/material.dart';

class GestureDete extends StatefulWidget {
  const GestureDete({ Key? key }) : super(key: key);

  @override
  _GestureDeteState createState() => _GestureDeteState();
}

class _GestureDeteState extends State<GestureDete> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _count++;
            });
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.cyan,
            child: FittedBox(child: Text("$_count")),
          ),
        ) ,
        ),
    );
  }
}