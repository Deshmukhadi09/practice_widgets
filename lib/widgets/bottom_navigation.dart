import 'package:flutter/material.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({ Key? key }) : super(key: key);

  @override
  _BottomnaviState createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person)

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation"),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
            label: "menu",
            icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
            label: "person",
            icon: Icon(Icons.person),
            ),
        ],
      ),
    );
  }
}