import 'package:flutter/material.dart';
import 'package:navigation_animation/widgets3/alertdialog.dart';
import 'package:navigation_animation/widgets3/checkboxlisttile.dart';
import 'package:navigation_animation/widgets3/cliprrect.dart';
import 'package:navigation_animation/widgets3/flexible.dart';
import 'package:navigation_animation/widgets3/gesturedetector.dart';
import 'package:navigation_animation/widgets3/inkwell.dart';
import 'package:navigation_animation/widgets3/interactiveviwer.dart';
import 'package:navigation_animation/widgets3/position.dart';
import 'package:navigation_animation/widgets3/visible.dart';
import 'package:navigation_animation/widgets2/adaptive.dart';
import 'package:navigation_animation/widgets2/fittedBox.dart';
import 'package:navigation_animation/widgets3/stack.dart';
import 'package:navigation_animation/widgets2/spacer.dart';
import 'package:navigation_animation/widgets2/steambuilder.dart';
import 'package:navigation_animation/widgets2/DatePicker.dart';
import 'package:navigation_animation/widgets2/futureBuilder.dart';
import 'package:navigation_animation/widgets2/tooltip.dart';
import 'package:navigation_animation/widgets/bottom_navigation.dart';
import 'package:navigation_animation/widgets/stepper.dart';
import 'package:navigation_animation/widgets2/cross_fade.dart';
import 'package:navigation_animation/widgets2/simple_dialog.dart';
import 'package:navigation_animation/widgets2/willpop.dart';
import 'package:navigation_animation/widgets/page_view.dart';
import 'package:navigation_animation/widgets/pop_up_menu.dart';
import 'package:navigation_animation/widgets/range_slider.dart';
import 'package:navigation_animation/widgets/expansiontile.dart';
import 'package:navigation_animation/widgets/time_picker.dart';
import 'package:navigation_animation/widgets/choicechip.dart';
import 'package:navigation_animation/widgets/hero.dart';
import 'package:navigation_animation/widgets/sliverappbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hellow",
      //Navigate with named routes.........................
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => const MainScreen(),
      //   '/second' : (context) => const DetailPage(),
      // },
      theme:  ThemeData(
        primaryColorDark: Colors.black,
      ),
      //No need to specified the home with named routes.......................
      home: const FlexibleWid(),
    );
  }
}

