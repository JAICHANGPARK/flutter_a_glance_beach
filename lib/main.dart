import 'package:flutter/material.dart';
Future fetchBeachCongestion() async{



}
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => BeachApp()
      },
    );
  }
}

class BeachApp extends StatefulWidget {
  @override
  _BeachAppState createState() => _BeachAppState();
}

class _BeachAppState extends State<BeachApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

