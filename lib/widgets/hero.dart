import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainScreen"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));

            //second way with named route................
            // Navigator.pushNamed(context, "/second");
          },
          child: Hero(
            tag: "imageHero", 
            child: SizedBox(height: 200,width: 300,child: Image.asset("assets/images/adi.jpg")),
            )
          ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailPage"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: "ImageHero", 
          child: Center(
            child: Image.asset("assets/images/adi.jpg"),
            ),
          ),
        ),
    );
  }
}