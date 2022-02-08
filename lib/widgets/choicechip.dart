import 'package:flutter/material.dart';

class Choicechips extends StatefulWidget {
  const Choicechips({ Key? key }) : super(key: key);

  @override
  _ChoicechipsState createState() => _ChoicechipsState();
}

class _ChoicechipsState extends State<Choicechips> {
   bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("choice chip"),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text("Codesinsider"),
          avatar: const CircleAvatar(backgroundImage: AssetImage("assets/images/adi.jpg")),
          selected: isSelected,
          onSelected: (bool value){
            setState(() {
              isSelected = value;
            });
          },
        ),
      ),
    );
  }
}
