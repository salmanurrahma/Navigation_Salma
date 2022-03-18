import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailScreen();
            }));
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://cdn.imgbin.com/18/1/6/imgbin-laptop-asus-rog-gl552-intel-core-i7-republic-of-gamers-laptop-gDmN9hmQ7a47VWsevtCNDMWx1.jpg',
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
            child: Hero(
          tag: 'imageHero',
          child: Image.network(
              'https://www.asus.com/id/event/ROG_Vlogging_Competition/images/Prizes/ROG_Strix_GL504GV_Hero_II.png'),
        )),
      ),
    );
  }
}
