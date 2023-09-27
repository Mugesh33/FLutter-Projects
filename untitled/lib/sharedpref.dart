import 'package:flutter/material.dart';
class Vivo extends StatefulWidget {
  const Vivo({Key? key}) : super(key: key);

  @override
  State<Vivo> createState() => _VivoState();
}

class _VivoState extends State<Vivo> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(title: Center(child: Text("Home"),)),
      body: Container(
        color: Colors.blueAccent,
        child: Icon(Icons.home,color: Colors.white,),
      )
    ));
  }
}
