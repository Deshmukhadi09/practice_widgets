import 'package:flutter/material.dart';

class Rangeslider extends StatefulWidget {
  const Rangeslider({ Key? key }) : super(key: key);

  @override
  _RangesliderState createState() => _RangesliderState();
}

class _RangesliderState extends State<Rangeslider> {
  RangeValues values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Range slider"),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 8,
          onChanged: (newValue) {
            setState(() {
              values = newValue;
            });
          },
        ),
      ),
    );
  }
}