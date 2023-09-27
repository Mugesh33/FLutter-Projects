import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Mobile.dart';
import 'package:untitled/cars.dart';
import 'package:untitled/color.dart';
import 'package:untitled/demoproject/login.dart';
import 'package:untitled/logim.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login%201.dart';
import 'package:firebase_core/firebase_core.dart';
import 'List View builder.dart';
import 'demoproject/bottom.dart';
import 'demoproject/drop.dart';
import 'demoproject/home.dart';
import 'demoproject/realtime.dart';
import 'firebase_options.dart';
import 'gpt auth.dart';
import 'list view.dart';
import 'list.dart';
import 'mail/pass auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'my validate.dart';
import 'new auth.dart';
import 'sharedpref.dart';
import 'demoproject/sign Up.dart';
import 'demoproject/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:ProfileScreen()
    );
  }
}

