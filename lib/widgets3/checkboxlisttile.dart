import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({ Key? key }) : super(key: key);

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("checkbox listtile"),),
      body: CheckboxListTile(
        value: _isChecked, 
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        title: const Text("This is heading"),
        activeColor: Colors.orange,
        checkColor: Colors.black,
        controlAffinity: ListTileControlAffinity.leading,
        tileColor: Colors.black12,
        subtitle: const Text("this is sub title"),
        tristate: true,
        ),
    );
  }
}