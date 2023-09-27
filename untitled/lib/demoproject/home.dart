import 'package:flutter/material.dart';

import 'bottom.dart';
import 'drop.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: draw(),
       body: Bottom(),
      appBar: AppBar(title: Text("Home Page"),
      backgroundColor: Colors.blueAccent,
      ),
      // body: Center(
      //   child: Icon(Icons.home_filled,size: 200,),
      // ),
    );
  }
}
