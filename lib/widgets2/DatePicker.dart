import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({ Key? key }) : super(key: key);

  @override
  _DatepickerState createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime _dateTime = DateTime(2100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker") ,
        ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text( "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
            style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () async{
              DateTime? _newDate = await showDatePicker(
                context: context, 
                lastDate: DateTime(3000),
                firstDate: DateTime(1800),
                initialDate: _dateTime,
                );
                if(_newDate != null) {
                  setState(() {
                    _dateTime = _newDate;
                  }); 
                }
            }, 
            child: const Text("get date"),)
          ],
        ),
      ),
    );
  }
}