import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({ Key? key }) : super(key: key);

  @override
  _InkWellWidgetState createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  Color colorBox = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ink well"),),
        body: Center(
          child: InkWell(
            onLongPress: () {
              setState(() {
                colorBox = Colors.lime;
              });
            },
            onDoubleTap: () {
              setState(() {
                colorBox = Colors.pink;
              });
            },
            onTap: () {
              setState(() {
                colorBox = Colors.blue;
              });
            },
            child: Ink(
              height: 200,
              width: 200,
              color: colorBox,
              child:const FittedBox(child: FlutterLogo(),),
            ),
            ),
          ),
    );
  }
}