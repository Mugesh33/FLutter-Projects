import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var list_name = ["apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps","apple","mango","orange","pineapple","graps",];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black45,
            appBar: AppBar(
              title: Text("List View Builder"),
            ),
            body: ListView.builder(itemCount: list_name.length,
              itemBuilder: (context,position){
              return Card(
                child:Text(
                  list_name[position],
                  style: TextStyle(fontSize: 22),
                )

              );
              }
            )
            )
            );
  }
}
