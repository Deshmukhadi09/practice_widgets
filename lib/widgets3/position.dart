import 'package:flutter/material.dart';

class PosWid extends StatefulWidget {
  const PosWid({ Key? key }) : super(key: key);

  @override
  _PosWidState createState() => _PosWidState();
}

class _PosWidState extends State<PosWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("position widget"),),
      body: Stack(
        children: [
          Positioned(left:40,top: 40,child: Image.asset("assets/images/background.jpeg",width: 250,)),
          Positioned(left:80,top: 80,child: Image.asset("assets/images/background.jpeg",width: 250,)),
          Positioned(left:120,top: 120,child: Image.asset("assets/images/background.jpeg",width: 250,)),
        ],
      ),
    );
  }
}