import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({ Key? key }) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("stack widget"),),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/adi.jpg"),
          Image.asset("assets/images/logo.jpg", height: 100,)
        ],
      ),
    );
  }
}