import 'package:flutter/material.dart';

class Poco extends StatefulWidget {
  const Poco({Key? key}) : super(key: key);

  @override
  State<Poco> createState() => _ColorState();
}

class _ColorState extends State<Poco> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return //SingleChildScrollView(
     Scaffold(
        // appBar: AppBar(title: Text("SWIGGY"),
        // centerTitle: true,
        // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset('assets/food.png',
                height:height * 0.25,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height*0.50,
                width: width,
               // color: Colors.amber.withOpacity(),
              //   decoration:BoxDecoration(
              //     gradient: LinearGradient(stops: [0.3,0.7],
              //     begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //   ),
              // ),
              ),
            ],
          ),


        const  Text("SWIGGY",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         const Text("Delivery App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),)
        ],
      ),
    );
   // );

  }
}
