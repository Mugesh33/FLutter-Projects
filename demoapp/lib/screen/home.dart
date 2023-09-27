import 'package:flutter/material.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
        actions: [
          Icon(Icons.logout),
        ],
      ),

      body: SafeArea(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
                const Text("Choose",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0),textAlign: TextAlign.left
              ),
              const Text("Your Services",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0,),
              ),

              Image.asset("assets/butterfy.png", height: 50,)
            ],

          ),

        ),







      ),

    );
  }
}
