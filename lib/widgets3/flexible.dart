import 'package:flutter/material.dart';

class FlexibleWid extends StatefulWidget {
  const FlexibleWid({ Key? key }) : super(key: key);

  @override
  _FlexibleWidState createState() => _FlexibleWidState();
}

class _FlexibleWidState extends State<FlexibleWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Widget"),
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              color: Colors.red,
              // height: 150,
              // child: const Text("container 1"),
            ),),
            Flexible(
            child: Container(
              color: Colors.greenAccent,
              // height: 150,
              // child: const Text("container 2"),
            ),),
            Flexible(
            child: Container(
              color: Colors.yellow,
              // height: 150,
              // child: const Text("container 3"),
            ),),
        ],
      ),
    );
  }
}