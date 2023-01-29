import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Text('hi again how is'),
          ),
        ),
      ),
    );
  }
}
