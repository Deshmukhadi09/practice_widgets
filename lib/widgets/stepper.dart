import 'package:flutter/material.dart';

class Stepperwid extends StatefulWidget {
  const Stepperwid({ Key? key }) : super(key: key);

  @override
  _StepperwidState createState() => _StepperwidState();
}

class _StepperwidState extends State<Stepperwid> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper"),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(title: Text("Step 1"), subtitle: Text("hellow"), content: Text("Information for step 1")),
            Step(title: Text("Step 2"), content: Text("Information for step 2")),
            Step(title: Text("Step 2"), content: Text("Information for step 3"))
          ],
          currentStep: _currentStep,
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          onStepContinue: () {
            if(_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if(_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          ),
      ),
    );
  }
}