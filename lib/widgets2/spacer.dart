import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spacer"),),
      body: Column(
        children: [
          Container(
            height: 100,
            // child: const Text("first container"),
            color: Colors.orange,
          ),
          const Spacer(flex: 1,),
          Container(
            height: 100,
            // child: const Text("second container"),
            color: Colors.indigo,
          ),
          const Spacer(flex: 2,),
          Container(
            height: 100,
            // child: const Text("third container"),
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}