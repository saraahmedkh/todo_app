import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo_app/screens/intro_screen.dart';
import 'package:todo_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowMaterialGrid: false,
      initialRoute: IntroScreen.routeName,
      routes: {
        IntroScreen.routeName: (c) => IntroScreen(),
        LoginScreen.routeName: (c) => LoginScreen(),
      },
    );
  }
}
