import 'package:flutter/material.dart';

class FutBuild extends StatefulWidget {
  const FutBuild({ Key? key }) : super(key: key);

  @override
  _FutBuildState createState() => _FutBuildState();
}

class _FutBuildState extends State<FutBuild> {

  Future<String> getData() async {
    //here u can contro
    await Future.delayed(const Duration(seconds: 1));
    // if u want to throw error 
    // throw "An error occured";
    return "Its working";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future builder"),),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          // initialData: InitialData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(snapshot.data.toString()),
                ElevatedButton(
                  onPressed: () {setState(() {

                  });}, 
                  child: const Text("Refresh"),
                  )
              ],
            );
          },
        ),
        ),
    );
  }
}