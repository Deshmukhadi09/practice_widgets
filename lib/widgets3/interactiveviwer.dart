import 'package:flutter/material.dart';

class InterViewer extends StatefulWidget {
  const InterViewer({ Key? key }) : super(key: key);

  @override
  _InterViewerState createState() => _InterViewerState();
}

class _InterViewerState extends State<InterViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Interactive viewer"),),
      // body: InteractiveViewer(
      //   maxScale: 5.0,
      //   child: Image.asset("assets/images/adi.jpg"),
      // ),
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(title: const Text("second screen")),
          body: const Center(child: Text("hellow"),),
        ),
        ),
    );
  }
}