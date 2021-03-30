import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:streaming_app/titans.dart';
//import 'customicon.dart';

class HomeScreenTopPart extends StatelessWidget {
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
class HomeView extends StatelessWidget {
  final TextStyle topMenuStyle = new TextStyle(
      fontFamily: 'Avenir next',
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w600);
  final TextStyle buttonInfoStyle = new TextStyle(
      fontFamily: 'Avenir next',
      fontSize: 10,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
          child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 600,
              // color: Colors.blue,
              decoration: new BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 200.0),
                      blurRadius: 10.0)
                ],
                image: new DecorationImage(
                    image: new AssetImage("assets/images/attack-on-titan.png"),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 120.0, left: 95.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Assista Agora",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "SF-Pro-Display-Bold"),
                    ),
                    Text(
                      "Attack on Titan: Ultima Temporada",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "SF-Pro-Display-Bold"),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 5),
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Text(
                          "Assistir",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context)=>
                                TitanPageView(data: '')
                        )
                      );
                    },
                  ),
                ],
              ),
            ),
            makeMaisAssistidos("Mais Assistidos"),
            bannerMovie(),
            makeNovidades('Novidades'),
          ],
        ),
      )),
    );
  }

  Widget bannerMovie() {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Já Disponível',
              style: topMenuStyle,
            ),
          ),
          Container(
            child: Image(
              image: new AssetImage("assets/images/banner2.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Text(
                          'Assistir',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
                FlatButton(
                  child: Container(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Favoritos',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  color: Color(0xff4f4f4f),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Container "Mais Assistidos"
  int counter = 0;
  Widget makeMaisAssistidos(String title) {
    return new Container(
      padding: EdgeInsets.only(left: 4, right: 4),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: topMenuStyle),
                ]),
          ),
          Container(
            height: 200,
            child: ListView(
                padding: EdgeInsets.all(3),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: makeAssistidosContainers()),
          )
        ],
      ),
    );
  }

  List<Widget> makeAssistidosContainers() {
    List<Container> movieList = [];
    for (int i = 10; i < 20; i++) {
      counter++;
      movieList.add(new Container(
          padding: EdgeInsets.all(2),
          height: 200,
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          "assets/images/" + counter.toString() + ".jpg"),
                      fit: BoxFit.fitHeight),
                ),
                child: Center(
                    child: TextButton(
                  onPressed: () {},
                  child: null,
                )),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(3),
                padding: EdgeInsets.only(left: 18, right: 18),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        'Série' + counter.toString(),
                        style: TextStyle(color: Color(0xffc1c1c1)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )));
      if (counter == 20) {
        counter = 0;
      }
    }
    return movieList;
  }
  //Fim do container "Mais Assistidos"

  //Container Novidades
  Widget makeNovidades(String title) {
    var topMenuStyle = new TextStyle(
        fontFamily: 'Avenir next',
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600);
    return new Container(
      padding: EdgeInsets.only(top: 4, left: 4),
      height: 400,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: topMenuStyle),
                ]),
          ),
          Container(
            height: 350,
            child: ListView(
                padding: EdgeInsets.only(right: 6),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: makeNovidadeContainer()),
          )
        ],
      ),
    );
  }

  List<Widget> makeNovidadeContainer() {
    List<Container> movieList = [];
    for (int i = 0; i < 10; i++) {
      counter++;
      movieList.add(new Container(
          padding: EdgeInsets.all(2),
          height: 200,
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          "assets/images/" + counter.toString() + ".jpg"),
                      fit: BoxFit.fitHeight),
                ),
                child: Center(
                    child: TextButton(
                  onPressed: () {},
                  child: null,
                )),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(3),
                padding: EdgeInsets.only(left: 18, right: 18),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        'Série' + counter.toString(),
                        style: TextStyle(color: Color(0xffc1c1c1)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )));
      if (counter == 10) {
        counter = 0;
      }
    }
    return movieList;
  }
}
//Fim do Container Novidades

// ignore: must_be_immutable



