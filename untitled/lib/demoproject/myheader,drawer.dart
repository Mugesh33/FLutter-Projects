import 'package:flutter/material.dart';
class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.greenAccent,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              // image:DecorationImage(
              //   image: asset(
              //     'assets/elon.jpg',
              //   ),
              // )
            ),
          ),
          const Text("TESLA",style: TextStyle(color: Colors.white,fontSize: 20),),
          const Text("Tesla Energy Operation@musk",style: TextStyle(color: Colors.grey,fontSize: 14),)
        ],
      ),
    );
  }
}

asset(String s) {
}
