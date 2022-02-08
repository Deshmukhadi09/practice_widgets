//that allow you to back only by back iconbutton not by the default button......................

import 'package:flutter/material.dart';

class Willpop extends StatelessWidget {
  const Willpop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("willpop widget"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const SecondPage()));
            },
            child: const Text("click here"),
          ),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("second page"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          ),
          body: const Center(
            child: Text("here i am....")
          ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}