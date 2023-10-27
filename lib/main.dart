import 'package:flutter/material.dart';
import 'package:shosho/screens/login/view.dart';

import 'screens/about/view.dart';
import 'screens/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        )
      ),
      home: LoginView(),
    );
  }
}

