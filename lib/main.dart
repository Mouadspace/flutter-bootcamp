import 'package:flutter/material.dart';

import 'screens/auth/signIn.dart';
import 'screens/auth/signUp.dart';
import 'screens/onBoarding/page1.dart';
import 'screens/onBoarding/page2.dart';
import 'screens/onBoarding/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Mulish",
      ),
      home: const signUp(title: 'Ecomerce Application'),
    );
  }
}
