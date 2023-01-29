import 'package:flutter/material.dart';

class Onbording3 extends StatelessWidget {
  const Onbording3({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'TOKOTO',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xffea7445),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 13),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "We show the easy wat to shop.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          "Just stay at home with us",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ]),
                ],
              ),
              // const SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    // decoration: BoxDecoration(
                    //   color: const Color(0xffea7445),
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Image.asset("assets/images/splash_3.png"),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[350],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[350],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 20,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffea7445),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // const SizedBox(height: 80),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('ElevatedButton Clicked');
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // shape: StadiumBorder(),
                    primary: const Color(0xffea7445), //background
                    onPrimary: Colors.white, //foreground
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void onPressed() {}
