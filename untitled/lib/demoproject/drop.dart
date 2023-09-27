import 'package:flutter/material.dart';

//import 'home screen.dart';
import 'home.dart';
class draw extends StatefulWidget {
  const draw({Key? key}) : super(key: key);

  @override
  State<draw> createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          UserAccountsDrawerHeader (
            accountName: Text("ElonMusk"),
            accountEmail:Text("musk@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('elon.jpg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,),
              ),
            ),
          ),
          //  _drawerView(icon:Icons.home,text: ""),
          ListTile(
            leading:const Icon(Icons.home),
            title:const Text("HOME"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
              print('home tapped');},
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.car_rental_sharp),
            title:const Text("For Rental"),
            onTap: () => print('Car tapped'),
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.location_on_outlined),
            title:const Text("Change City"),
            onTap: () => print('Car tapped'),
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.directions_car_sharp),
            title:const Text("Choose your Car Brand"),
            onTap: () => print('Car tapped'),
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.notification_important),
            title:const Text("Notifications"),
            onTap: () => print('Notifications tapped'),
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.settings_rounded),
            title:const Text("Setting"),
            onTap: () => print('setting tapped'),
          ),
          _divider(),
          ListTile(
            leading:const Icon(Icons.logout_outlined),
            title:const Text("Logout"),
            onTap: () => print('Logout tapped'),
          ),
          _divider(),
        ],
      ),

    );
  }

  Divider _divider() {
    return  const Divider(
      height: 10,
      thickness: 1,
      indent: 0,
      endIndent: 0,
      color: Colors.black26,
    );
  }

// Widget _drawerView({required IconData icon, String? text,Function()? onTap}) {
//   return ListTile(
//     leading: Icon(icon),
//     title: Text(text ?? ''),
//     onTap: onTap,
//   );
}