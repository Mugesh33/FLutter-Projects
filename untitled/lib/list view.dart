import 'package:flutter/material.dart';
import 'List View builder.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text("List View"),),
        body:ListView(
          children: [
          Container(
              height: 50,
              color: Colors.lightGreen,
              child: const Center(child:Text('Apple')),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: const Center(child:Text('Mango')),
            ),
            Container(
              height: 50,
              color: Colors.black87,
    child: Text('banana'),
            ),
            Container(
              height: 50,
              color: Colors.yellow,
              child: const Center(child:Text('Pine Apple')),
            ),
            Container(
              height: 50,
              color: Colors.pink,
              child: const Center(child:Text('Lemon')),
            ),
            Container(
              height: 50,
              color: Colors.brown,
              child: const Center(child:Text('Graps')),
            ),

              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
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
