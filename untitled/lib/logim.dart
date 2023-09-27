import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/second.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  // final SharedPreferences prefs =  SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text("Welcome Back!",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              const Text("log in to your account of Allure")
            ],
          ),
        ),
        Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          decoration: const BoxDecoration(),
          child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "E-Mail",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.blue, width: 2)))),
        ),
        Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          decoration: const BoxDecoration(),
          child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.blue, width: 2)))),
        ),
        Container(
          alignment: Alignment.centerRight,
          // margin:
          // EdgeInsets.symmetric(horizontal: 30,vertical: 2),
          child: const Text('Forgot Password?'),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Second()));
            },
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "LOG IN",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("Or connect using"),
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    ));
  }
}
