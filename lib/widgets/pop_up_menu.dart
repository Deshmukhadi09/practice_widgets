import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Popupmenu extends StatefulWidget {
  const Popupmenu({ Key? key }) : super(key: key);

  @override
  _PopupmenuState createState() => _PopupmenuState();
}

class _PopupmenuState extends State<Popupmenu> {
  String title = "First page";
  String firstPage = "First page";
  String secondPage = "Second Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text(title),
    actions: [
      PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(child: Text(firstPage),
          value: firstPage,),
           PopupMenuItem(child: Text(secondPage),
          value: secondPage,),
        ],
        onSelected: (String newvalue) {
          setState(() {
            title = newvalue;
          });
        },
        )
    ],
    ),    
    );
  }
}