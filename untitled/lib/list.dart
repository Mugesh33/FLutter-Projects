import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("CARS"),
            ),
            body:  SingleChildScrollView(

        //  child: // Center(
        //       child: Container(
        //         margin: const EdgeInsets.all(30.0),
        //         color: Colors.blueAccent,
        //         height: 2000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Lancer",)
                  ],
                  //         width: 1500,
                ),
              ),
            )
          //  )

    );
  }
}
