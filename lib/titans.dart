import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streaming_app/homepage.dart';

class TitanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// ignore: must_be_immutable
class TitanPageView extends StatelessWidget {
  final String data;
  //final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 500, 100];

  TitanPageView({
    @required this.data,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 500,
                height: 600,
                // color: Colors.blue,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("assets/images/attack-on-titan.png"),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 120.0, left: 95.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Attack on Titans",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: "SF-Pro-Display-Bold"),
                      ),
                      Text(
                        "Attack on Titan:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: "SF-Pro-Display-Bold"),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 400,
                child: ListView(
                  children: [],
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                ),
              )
            ],

          ),

        ),
      ),


    );
  }
}


