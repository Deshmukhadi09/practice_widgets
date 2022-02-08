import 'package:flutter/material.dart';

class Expansiontile extends StatefulWidget {
  const Expansiontile({ Key? key, title, children }) : super(key: key);

  @override
  _ExpansiontileState createState() => _ExpansiontileState();
}

class _ExpansiontileState extends State<Expansiontile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion tile"),
      ),
      body: const ExpansionTile(
        title: Text("see more"),
        children:[
          ListTile(title: Text("hello"),
          ),
          ListTile(title: Text("okk"),)
        ]
      ),
    );
  }
}