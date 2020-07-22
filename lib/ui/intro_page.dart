import 'package:flutter/material.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.of(context).pushNamedAndRemoveUntil("/home", (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2015/07/05/13/44/beach-832346_960_720.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 0,
            top: 140,
            right: 0,
            bottom: 24,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("바다일기", style: TextStyle(
                      fontSize: 84,
                      color: Colors.white
                  ),),
                  Text("모두의 해수욕장", style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
