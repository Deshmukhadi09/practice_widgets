import 'package:flutter/material.dart';

class AleDial extends StatefulWidget {
  const AleDial({ Key? key }) : super(key: key);

  @override
  _AleDialState createState() => _AleDialState();
}

class _AleDialState extends State<AleDial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog box"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                title: const Text("this is dialog"),
                content: const Text("yeh we are able to show the dialog box"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, 
                    child: const Text("close" , style: TextStyle(color: Colors.red),),
                    ),
                ],
              ),
              );
          },
          child: const Text("show alertdialog"),
          ),
      ),
    );
  }
}