import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor:  Colors.black,
      primaryColorBrightness: Brightness.dark
    ),
    home: AnimeWixTabBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimeWixTabBar extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Theme(
       data: ThemeData(
         brightness: Brightness.dark
      ),
       child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs:[
            Tab(icon: Icon(Icons.home, ),text: "Inicio", ),
            Tab(icon: Icon(Icons.bookmark_border,), text: "Favoritos",),
            Tab(icon: Icon(Icons.person_outline), text:"Perfil")
        ],
      ),
      body: TabBarView(
          children: [
            HomeScreenTopPart(),
             Center( child: Text("page 2"),),
             Center( child: Text("page 3")),
             
          ],           
        ),
       )
      ),
      );
  
    
  }
}

