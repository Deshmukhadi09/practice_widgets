import 'dart:ffi';

import 'package:flutter/material.dart';

class Sreambuilder extends StatefulWidget {
  const Sreambuilder({ Key? key }) : super(key: key);

  @override
  _SreambuilderState createState() => _SreambuilderState();
}

class _SreambuilderState extends State<Sreambuilder> {

  //fake steam from firebase
  Stream<int> generateStream = (() async* {
    await Future<void>.delayed(const Duration(seconds: 2));
    yield 1;
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 2;
    // throw "an error accured";
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 3;
  }) ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stream builder"),),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              const CircularProgressIndicator();
            }

            if(snapshot.hasError) {
             const Text("error");
            }

            return Center(
              child: Text(snapshot.data.toString(),
              style: const TextStyle(fontSize: 40.0),),
            );
          },
        ),
        ),
    );
  }
}