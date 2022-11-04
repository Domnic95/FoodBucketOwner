// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';
import 'package:food_bucket/UI/BottomNavigation/Home/homepage.dart';
import 'package:food_bucket/UI/BottomNavigation/Home/orders_screen.dart';
import 'package:food_bucket/UI/BottomNavigation/Home/profile_screen.dart';
import 'package:food_bucket/UI/BottomNavigation/Home/summery_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  PageController pageController = PageController();
  late List<Widget> _children;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _bottomBarItems = [
      BottomNavigationBarItem(
        backgroundColor: greycolor,
        icon: ImageIcon(
          AssetImage('images/home.png'),
          size: 30,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: ImageIcon(
          AssetImage('images/Menu.png'),
          size: 30,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: ImageIcon(
          AssetImage('images/dollor.png'),
          size: 35,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: ImageIcon(
          AssetImage('images/profile.png'),
          size: 30,
        ),
        label: '',
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: getBody,
            ),
            BottomNavigationBar(
              currentIndex: _currentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: whitecolor,
              elevation: 2,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: blackcolor,
              items: _bottomBarItems,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }

  Widget get getBody {
    switch (_currentIndex) {
      case 0:
        return Homepage();
      case 1:
        return Summery_screen();
      case 2:
        return Orders_screen();
      // case 3:
      //   return Container();
    }
    return Container();
  }
}
