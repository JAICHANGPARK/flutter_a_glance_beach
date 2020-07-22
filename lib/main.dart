import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_a_glacne_beach/model/beach_congestion.dart';
import 'package:http/http.dart' as http;

import 'ui/intro_page.dart';

Future<BeachCongestion> fetchBeachCongestion() async {
  var response = await http.get('https://seantour.com/seantour_map/travel/getBeachCongestionApi.do');

  if (response.statusCode == 200) {
    print(response.body.toString());
    return BeachCongestion.fromJson(jsonDecode(response.body.toString()));
  } else {
    return null;
  }
}

List<Beach0> changeBeachObjectToList(BeachCongestion beachCongestion) {
  List<Beach0> bList = [];
  bList.add(beachCongestion.beach0);
  bList.add(beachCongestion.beach1);
  bList.add(beachCongestion.beach2);
  bList.add(beachCongestion.beach3);
  bList.add(beachCongestion.beach4);
  bList.add(beachCongestion.beach5);
  bList.add(beachCongestion.beach6);
  bList.add(beachCongestion.beach7);
  bList.add(beachCongestion.beach8);
  bList.add(beachCongestion.beach9);
  bList.add(beachCongestion.beach10);
  bList.add(beachCongestion.beach11);
  bList.add(beachCongestion.beach12);
  bList.add(beachCongestion.beach13);
  bList.add(beachCongestion.beach14);
  bList.add(beachCongestion.beach15);
  bList.add(beachCongestion.beach16);
  bList.add(beachCongestion.beach17);
  bList.add(beachCongestion.beach18);
  bList.add(beachCongestion.beach19);
  bList.add(beachCongestion.beach20);
  bList.add(beachCongestion.beach21);
  bList.add(beachCongestion.beach22);
  bList.add(beachCongestion.beach23);
  bList.add(beachCongestion.beach24);
  bList.add(beachCongestion.beach25);
  bList.add(beachCongestion.beach26);
  bList.add(beachCongestion.beach27);
  bList.add(beachCongestion.beach28);
  bList.add(beachCongestion.beach29);
  bList.add(beachCongestion.beach30);
  bList.add(beachCongestion.beach31);
  bList.add(beachCongestion.beach32);
  bList.add(beachCongestion.beach33);
  bList.add(beachCongestion.beach34);
  bList.add(beachCongestion.beach35);
  bList.add(beachCongestion.beach36);
  bList.add(beachCongestion.beach37);
  bList.add(beachCongestion.beach38);
  bList.add(beachCongestion.beach40);
  bList.add(beachCongestion.beach41);
  bList.add(beachCongestion.beach42);
  bList.add(beachCongestion.beach43);
  bList.add(beachCongestion.beach44);
  bList.add(beachCongestion.beach45);
  bList.add(beachCongestion.beach46);
  bList.add(beachCongestion.beach47);
  bList.add(beachCongestion.beach48);
  bList.add(beachCongestion.beach49);
  return bList;
}

Widget _buildLight(int beachId, int population) {
  String lightColor = calculateTrafficLight(beachId, population);
  Color _color;
  switch (lightColor) {
    case "green":
      _color = Colors.green;
      break;
    case "yellow":
      _color = Colors.yellow;
      break;
    case "red":
      _color = Colors.red;
      break;
    default:
      _color = Colors.grey;
      break;
  }
  return CircleAvatar(
    backgroundColor: _color,
  );
}

String calculateTrafficLight(int beachId, int population) {
  var returnStr = '';
  if (beachId == 1) {
    if (population < 29250) {
      returnStr = "green";
    } else if (population < 58499) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 2) {
    if (population < 18000) {
      returnStr = "green";
    } else if (population < 35999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 3) {
    if (population < 10000) {
      returnStr = "green";
    } else if (population < 19999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 4) {
    if (population < 48750) {
      returnStr = "green";
    } else if (population < 97499) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 5) {
    if (population < 13813) {
      returnStr = "green";
    } else if (population < 27624) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 6) {
    if (population < 26377) {
      returnStr = "green";
    } else if (population < 52752) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 7) {
    if (population < 12900) {
      returnStr = "green";
    } else if (population < 25799) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 8) {
    if (population < 26793) {
      returnStr = "green";
    } else if (population < 53585) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 9) {
    if (population < 6000) {
      returnStr = "green";
    } else if (population < 11999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 10) {
    if (population < 14825) {
      returnStr = "green";
    } else if (population < 29649) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 11) {
    if (population < 19186) {
      returnStr = "green";
    } else if (population < 38371) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 12) {
    if (population < 7175) {
      returnStr = "green";
    } else if (population < 14349) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 13) {
    if (population < 1948) {
      returnStr = "green";
    } else if (population < 3894) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 14) {
    if (population < 47500) {
      returnStr = "green";
    } else if (population < 94999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 15) {
    if (population < 5625) {
      returnStr = "green";
    } else if (population < 11249) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 16) {
    if (population < 9461) {
      returnStr = "green";
    } else if (population < 18922) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 17) {
    if (population < 5500) {
      returnStr = "green";
    } else if (population < 10999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 18) {
    if (population < 10191) {
      returnStr = "green";
    } else if (population < 20382) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 19) {
    if (population < 4500) {
      returnStr = "green";
    } else if (population < 8999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 20) {
    if (population < 5000) {
      returnStr = "green";
    } else if (population < 9999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 21) {
    if (population < 58940) {
      returnStr = "green";
    } else if (population < 117879) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 22) {
    if (population < 16548) {
      returnStr = "green";
    } else if (population < 33096) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 23) {
    if (population < 23438) {
      returnStr = "green";
    } else if (population < 46874) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 24) {
    if (population < 6250) {
      returnStr = "green";
    } else if (population < 12499) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 25) {
    if (population < 8000) {
      returnStr = "green";
    } else if (population < 15999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 26) {
    if (population < 8343) {
      returnStr = "green";
    } else if (population < 16684) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 27) {
    if (population < 7000) {
      returnStr = "green";
    } else if (population < 13999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 28) {
    if (population < 15403) {
      returnStr = "green";
    } else if (population < 30805) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 29) {
    if (population < 250) {
      returnStr = "green";
    } else if (population < 499) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 30) {
    if (population < 2500) {
      returnStr = "green";
    } else if (population < 4999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 31) {
    if (population < 8640) {
      returnStr = "green";
    } else if (population < 17279) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 32) {
    if (population < 4661) {
      returnStr = "green";
    } else if (population < 9321) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 33) {
    if (population < 3188) {
      returnStr = "green";
    } else if (population < 6374) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 34) {
    if (population < 3658) {
      returnStr = "green";
    } else if (population < 7315) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 35) {
    if (population < 7000) {
      returnStr = "green";
    } else if (population < 13999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 36) {
    if (population < 19688) {
      returnStr = "green";
    } else if (population < 39374) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 37) {
    if (population < 5500) {
      returnStr = "green";
    } else if (population < 10999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 38) {
    if (population < 4171) {
      returnStr = "green";
    } else if (population < 8341) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 39) {
    if (population < 104598) {
      returnStr = "green";
    } else if (population < 209195) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 40) {
    if (population < 4725) {
      returnStr = "green";
    } else if (population < 9449) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 41) {
    if (population < 2000) {
      returnStr = "green";
    } else if (population < 3999) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 42) {
    if (population < 28173) {
      returnStr = "green";
    } else if (population < 56345) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 43) {
    if (population < 2293) {
      returnStr = "green";
    } else if (population < 4586) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 44) {
    if (population < 243) {
      returnStr = "green";
    } else if (population < 484) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 45) {
    if (population < 4825) {
      returnStr = "green";
    } else if (population < 9649) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 46) {
    if (population < 4496) {
      returnStr = "green";
    } else if (population < 8991) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 47) {
    if (population < 8859) {
      returnStr = "green";
    } else if (population < 17718) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 48) {
    if (population < 4499) {
      returnStr = "green";
    } else if (population < 8998) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 49) {
    if (population < 4439) {
      returnStr = "green";
    } else if (population < 8878) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }
  if (beachId == 50) {
    if (population < 5813) {
      returnStr = "green";
    } else if (population < 11624) {
      returnStr = "yellow";
    } else {
      returnStr = "red";
    }
  }

  return returnStr;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '바다일기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {"/": (context) => IntroPage(),
      "/home" : (context) => BeachApp()},
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
      print(_beachCongestion);
      _beachList = changeBeachObjectToList(_beachCongestion);
      print(_beachList.length);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
//        child: Placeholder(),
        child: _beachList.length > 0
            ? RefreshIndicator(
                onRefresh: () async {
                  if (_beachList.length > 0) {
                    setState(() {
                      _beachList.clear();
                    });
                  }
                  _beachCongestion = await fetchBeachCongestion();
                  _beachList = changeBeachObjectToList(_beachCongestion);
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
                        title: Text("(${_beachList[index].poiNm}(${_beachList[index].seqId})"),
                        trailing: _buildLight(_beachList[index].seqId, _beachList[index].uniqPop),
                        subtitle: Text("갱신: ${_beachList[index].etlDt}"),
                        leading: Text(_beachList[index].congestion),
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

