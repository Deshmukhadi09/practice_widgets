import 'package:flutter/material.dart';
// import 'package:navigation_animation/widgets2/DatePicker.dart';
import 'package:navigation_animation/widgets2/futureBuilder.dart';
// import 'package:navigation_animation/widgets/bottom_navigation.dart';
// import 'package:navigation_animation/widgets/stepper.dart';
// import 'package:navigation_animation/widgets2/cross_fade.dart';
// import 'package:navigation_animation/widgets2/simple_dialog.dart';
// import 'package:navigation_animation/widgets2/willpop.dart';
// import 'package:navigation_animation/widgets/page_view.dart';
// import 'package:navigation_animation/widgets/pop_up_menu.dart';
// import 'package:navigation_animation/widgets/range_slider.dart';
// import 'package:navigation_animation/widgets/expansiontile.dart';
// import 'package:navigation_animation/widgets/time_picker.dart';
// import 'package:navigation_animation/widgets/choicechip.dart';
// import 'package:navigation_animation/widgets/hero.dart';
// import 'package:navigation_animation/widgets/sliverappbar.dart';


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
      home: const FutBuild(),
    );
  }
}

