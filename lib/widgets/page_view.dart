import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({ Key? key }) : super(key: key);

  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pageview"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.cyan,
            child: const Center(child: Text("First page", style: TextStyle(fontSize: 30),)),
          ),
          Container(
            color: Colors.deepOrange,
            child: const Center(child: Text("Second page", style: TextStyle(fontSize: 30),)),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Center(child: Text("Third page", style: TextStyle(fontSize: 30),)),
          )
        ],
      ),
    );
  }
}