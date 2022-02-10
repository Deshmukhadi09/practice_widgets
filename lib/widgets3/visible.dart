import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VisibleWidget extends StatefulWidget {
  const VisibleWidget({ Key? key }) : super(key: key);

  @override
  _VisibleWidgetState createState() => _VisibleWidgetState();
}

class _VisibleWidgetState extends State<VisibleWidget> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("visible widget"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            }, 
            child: const Text("Switch" , style: TextStyle(color: Colors.white),),
            )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/background.jpeg", height: 100,),
            Visibility(visible: _isVisible,child: Image.asset("assets/images/logo.jpg", height: 100,)),
            Image.asset("assets/images/background.jpeg", height: 100,),
          ],
        ),
      ),
    );
  }
}