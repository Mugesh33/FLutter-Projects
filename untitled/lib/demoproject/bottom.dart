import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.pink ,
        // elevation: 0,
        //  shape: BeveledRectangleBorder(
        //    borderRadius: BorderRadius.circular(20.0),
        //    side: BorderSide(color: Colors.blueAccent,width: 2.0)
        //  ),
        mini: true,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape:CircularNotchedRectangle() ,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
               Icon(Icons.home,
                color: Colors.white,
                ),
                Text("HOME",style: TextStyle(color:Colors.white ),)
              ],
            ),

            ),
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.language_outlined,
                    color: Colors.white,
                  ),
                  Text("popular",style: TextStyle(color:Colors.white ),)
                ],
              ),

            ),

            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.car_repair_rounded,
                    color: Colors.white,
                  ),
                  Text("Repair",style: TextStyle(color:Colors.white ),)
                ],
              ),

            ),
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.notification_important,
                    color: Colors.white,
                  ),
                  Text("NOTIFICATION",style: TextStyle(color:Colors.white ),)
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
