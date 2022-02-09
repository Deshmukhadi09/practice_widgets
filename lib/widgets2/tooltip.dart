import 'package:flutter/material.dart';

//just long press on widget u will able to see tips

class ToolTip extends StatefulWidget {
  const ToolTip({ Key? key }) : super(key: key);

  @override
  _ToolTipState createState() => _ToolTipState();
}
class _ToolTipState extends State<ToolTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tool Tip"),),
      body: const Center(
        child:Tooltip(message: "image widget", child: Image(image: AssetImage("assets/images/adi.jpg"))),
      ),
    );
  }
}