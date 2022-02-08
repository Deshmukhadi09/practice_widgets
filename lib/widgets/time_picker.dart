import 'package:flutter/material.dart';

class Timepicker extends StatefulWidget {
  const Timepicker({ Key? key }) : super(key: key);

  @override
  _TimepickerState createState() => _TimepickerState();
}

class _TimepickerState extends State<Timepicker> {

  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Picker"),
      ),
      body: Center(
        child: Text('${time!.hour.toString()} : ${time!.minute.toString()}',
        style: const TextStyle(fontSize: 40),),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time_outlined),
        onPressed: () async {
          TimeOfDay? newtime = await showTimePicker(
            context: context, 
            initialTime: time!,
            );
            if(newtime!= null) {
              setState(() {
                time = newtime;
              });
            }
        },
        ),
    );
  }
}