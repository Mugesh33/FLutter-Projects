import 'package:flutter/material.dart';
//import 'package:flutter_project/Functions/sharedpref/shared.dart';
//import 'home screen.dart';
import 'home.dart';
import 'login.dart';
//import 'login1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String? _email;

  @override
  void initState() {
    super.initState();
    _getEmail();
    whereToGo();
  }

  whereToGo() async {
    Future.delayed(const Duration(seconds: 3), () {
      if (_email != "") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green, Colors.red],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/food.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "FOOD",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40),
            )
          ],
        ),
      ),
    );
  }

  void _getEmail() async {
    _email = await getUserEmail();
    print("email is $_email");
  }
}

getUserEmail() {
}
