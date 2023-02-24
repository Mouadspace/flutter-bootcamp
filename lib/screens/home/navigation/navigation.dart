import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../chat/chat.dart';
import '../../favourites/favourites.dart';
import '../../profile/profile.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        const HomeScreen(),
        const Favourites(),
        const Chat(),
        const Profile(),
        // const Screen5(),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/icons/svg/Shop Icon.svg",
            color:
                controller.index == 0 ? const Color(0xffea7445) : Colors.grey,
          ),
          // inactiveIcon: SvgPicture.asset(
          //   "assets/icons/svg/Shop Icon.svg",
          //   color: Colors.red,
          // ),
          title: ("Store"),
          activeColorPrimary: const Color(0xffea7445),
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/icons/svg/Heart Icon.svg",
            color:
                controller.index == 1 ? const Color(0xffea7445) : Colors.grey,
            // color: Colors.grey,
          ),
          title: ("Favorite"),
          activeColorPrimary: const Color(0xffea7445),
          inactiveColorPrimary: Colors.grey,
        ),
        // PersistentBottomNavBarItem(
        //   icon: const Icon(
        //     Icons.shopping_cart,
        //     color: Colors.white,
        //   ),
        //   inactiveIcon: const Icon(
        //     Icons.shopping_cart_outlined,
        //     color: Colors.white,
        //   ),
        //   activeColorPrimary: Colors.blue,
        //   inactiveColorPrimary: Colors.grey,
        // ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/icons/svg/Chat bubble Icon.svg",
            // color: Colors.grey,
          ),
          title: ("Chat"),
          activeColorPrimary: const Color(0xffea7445),
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/icons/svg/User Icon.svg",
            // color: Colors.grey,
          ),
          title: ("Setting"),
          activeColorPrimary: const Color(0xffea7445),
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      onItemSelected: (value) {
        controller.index = value;
        print("this is : ${controller.index}");
      },
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12,
    );
  }
}
