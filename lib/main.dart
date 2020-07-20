

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchBeachCongestion() async {
  var response = await http.get('https://seantour.com/seantour_map/travel/getBeachCongestionApi.do');

  if(response.statusCode == 200){
print(response.body.toString());
  }
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
      routes: {"/": (context) => BeachApp()},
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
    fetchBeachCongestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
