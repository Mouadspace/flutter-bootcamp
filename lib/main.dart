import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/home.dart';

import 'screens/auth/signIn.dart';
import 'screens/auth/signUp.dart';
import 'screens/home/navigation/navigation.dart';
import 'screens/onBoarding/page0.dart';
import 'screens/onBoarding/page1.dart';
import 'screens/onBoarding/page2.dart';
import 'screens/onBoarding/page3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      // home: const signIn(title: 'Ecomerce Application'),

      //adding routes
      initialRoute: "/navigation",
      routes: {
        "/signIn": (context) => const signIn(title: 'Ecomerce Application'),
        "/signUp": (context) => const signUp(title: 'Ecomerce Application'),
        "/home": (context) => const HomeScreen(),
        "/onBording": (context) => OnbordingScreens(),
        "/onBording1": (context) =>
            const Onbording1(title: 'Ecomerce Application'),
        "/onBording2": (context) =>
            const Onbording2(title: 'Ecomerce Application'),
        "/onBording3": (context) =>
            const Onbording3(title: 'Ecomerce Application'),
        "/navigation": (context) => const BottomNavBar(),
      },
    );
  }
}
