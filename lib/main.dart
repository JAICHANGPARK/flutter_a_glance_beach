import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_a_glacne_beach/model/beach_congestion.dart';
import 'package:http/http.dart' as http;

Future<BeachCongestion> fetchBeachCongestion() async {
  var response = await http.get('https://seantour.com/seantour_map/travel/getBeachCongestionApi.do');

  if (response.statusCode == 200) {
    print(response.body.toString());
    return BeachCongestion.fromJson(jsonDecode(response.body.toString()));
  } else {
    return null;
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
  BeachCongestion _beachCongestion;
  List<Beach0> _beachList = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchBeachCongestion().then((value) {
      _beachCongestion = value;
      _beachList.add(_beachCongestion.beach0);
      _beachList.add(_beachCongestion.beach1);
      _beachList.add(_beachCongestion.beach2);
      _beachList.add(_beachCongestion.beach3);
      _beachList.add(_beachCongestion.beach4);
      _beachList.add(_beachCongestion.beach5);
      _beachList.add(_beachCongestion.beach6);
      _beachList.add(_beachCongestion.beach7);
      _beachList.add(_beachCongestion.beach8);
      _beachList.add(_beachCongestion.beach9);
      _beachList.add(_beachCongestion.beach10);
      _beachList.add(_beachCongestion.beach11);
      _beachList.add(_beachCongestion.beach12);
      _beachList.add(_beachCongestion.beach13);
      _beachList.add(_beachCongestion.beach14);
      _beachList.add(_beachCongestion.beach15);
      _beachList.add(_beachCongestion.beach16);
      _beachList.add(_beachCongestion.beach17);
      _beachList.add(_beachCongestion.beach18);
      _beachList.add(_beachCongestion.beach19);
      _beachList.add(_beachCongestion.beach20);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: _beachList.length > 0
            ? RefreshIndicator(
                onRefresh: () async {
                  if (_beachList.length > 0) _beachList.clear();
                  setState(() {});
                  _beachCongestion = await fetchBeachCongestion();
                  _beachList.add(_beachCongestion.beach0);
                  _beachList.add(_beachCongestion.beach1);
                  _beachList.add(_beachCongestion.beach2);
                  _beachList.add(_beachCongestion.beach3);
                  _beachList.add(_beachCongestion.beach4);
                  _beachList.add(_beachCongestion.beach5);
                  _beachList.add(_beachCongestion.beach6);
                  _beachList.add(_beachCongestion.beach7);
                  _beachList.add(_beachCongestion.beach8);
                  _beachList.add(_beachCongestion.beach9);
                  _beachList.add(_beachCongestion.beach10);
                  _beachList.add(_beachCongestion.beach11);
                  _beachList.add(_beachCongestion.beach12);
                  _beachList.add(_beachCongestion.beach13);
                  _beachList.add(_beachCongestion.beach14);
                  _beachList.add(_beachCongestion.beach15);
                  _beachList.add(_beachCongestion.beach16);
                  _beachList.add(_beachCongestion.beach17);
                  _beachList.add(_beachCongestion.beach18);
                  _beachList.add(_beachCongestion.beach19);
                  _beachList.add(_beachCongestion.beach20);
                  setState(() {});
                },
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.grey,
                      );
                    },
                    itemCount: _beachList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_beachList[index].poiNm),
                        trailing: Text(_beachList[index].uniqPop.toString()),
                        subtitle: Text("갱신: ${_beachList[index].etlDt}"),
                      );
                    }),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
