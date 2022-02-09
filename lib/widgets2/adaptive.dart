import 'package:flutter/material.dart';

class Adaptive extends StatefulWidget {
  const Adaptive({Key? key}) : super(key: key);

  @override
  _AdaptiveState createState() => _AdaptiveState();
}

class _AdaptiveState extends State<Adaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider.adaptive(
            value: 1.0,
            onChanged: (double newValue) {},
          ),
          Switch.adaptive(
            value: false,
            onChanged: (bool newValue) {},
          ),
          SwitchListTile.adaptive(
            title: const Text("switch list tile"),
            value: true, 
          onChanged: (bool newValue) {},
          ),
          Icon(
            Icons.adaptive.share,
          ),
          const CircularProgressIndicator.adaptive()
        ],
      ),
    );
  }
}
