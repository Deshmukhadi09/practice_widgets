import 'package:flutter/material.dart';

class Cliprrect extends StatefulWidget {
  const Cliprrect({Key? key}) : super(key: key);

  @override
  _CliprrectState createState() => _CliprrectState();
}

class _CliprrectState extends State<Cliprrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip R Rect"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
          "assets/images/adi.jpg",
          width: 350,
        )),
      ),
    );
  }
}
