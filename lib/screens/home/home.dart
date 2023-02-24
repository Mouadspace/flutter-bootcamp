import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/navigation/navigation.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// my widgets
import '../auth/signUp.dart';
import '../onBoarding/page0.dart';
import 'widgets/cach_back.dart';
import 'widgets/categories.dart';
import 'widgets/custum_appbar.dart';
import 'widgets/popular_products.dart';
import 'widgets/special_offers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            CustumAppBar(),
            CashBack(),
            Categories(),
            SpecialOffers(),
            SizedBox(
              height: 35,
            ),
            PopularProducts(),
          ],
        ),
      ),
    ));
  }
}
