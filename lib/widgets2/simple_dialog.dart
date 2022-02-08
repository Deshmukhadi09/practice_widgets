import 'package:flutter/material.dart';

class simpledialog extends StatefulWidget {
  const simpledialog({ Key? key }) : super(key: key);

  @override
  _simpledialogState createState() => _simpledialogState();
}

class _simpledialogState extends State<simpledialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("simple dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("show dialog"),
          onPressed: () {
            showDialog(
              context: context, 
              builder: (context) =>  SimpleDialog(
                title: const Text("flutter dialog"),
                contentPadding: const EdgeInsets.all(20.0),
                children: [
                  const Text("more information"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, 
                    child: const Text("cancle"))
                ],
              ),
              );
          },
          ),
      ),
    );
  }
}