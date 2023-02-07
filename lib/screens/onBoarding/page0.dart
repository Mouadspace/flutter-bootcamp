import 'package:flutter/material.dart';
import 'package:flutter_a/screens/onBoarding/page1.dart';

import 'page2.dart';
import 'page3.dart';

// i declared the controller as global to access it to page 1 , 2 and 3 (not optimal)
PageController nextPage = PageController();
// int? pageIndex = 1;

class OnbordingScreens extends StatelessWidget {
  OnbordingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: nextPage,
          // onPageChanged: (int? value) {
          //   pageIndex = value;
          // },
          children: [
            Onbording1(title: "Ecomerce Application"),
            Onbording2(title: "Ecomerce Application"),
            Onbording3(title: "Ecomerce Application"),
          ],
        ),
      ]),
    );
  }
}
