import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({ Key? key }) : super(key: key);

  @override
  _CrossFadeState createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cross fade") ,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            }, 
            child: const Text("Switch",
            style: TextStyle(color: Colors.white),
            ), )
        ],),
        body: Center(
          child: AnimatedCrossFade(
            firstChild: Image.asset("assets/images/adi.jpg", width: 350,),
            secondChild: Image.asset("assets/images/adi1.jpg", width: 200,),
            crossFadeState: _bool? CrossFadeState.showFirst: CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
            ),
        ),
    );
  }
}