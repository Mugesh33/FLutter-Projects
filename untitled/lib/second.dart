import 'package:flutter/material.dart';
import 'list view.dart';
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text("Second"),),
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
              },
              child:Container(
                  margin: const EdgeInsets.only(top:20),
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child:Text("LOG IN",style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
