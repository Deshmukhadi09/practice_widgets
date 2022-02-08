import 'package:flutter/material.dart';

class Sliver extends StatefulWidget {
  const Sliver({ Key? key }) : super(key: key);

  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            //it will constroll appbar appearance
            floating: true,
            snap: true,
            title: Text("hello adi"),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text("Aditya", style: TextStyle(fontSize: 600),)
              ]
              ),
            ),
        ],
      ),
    );
  }
}