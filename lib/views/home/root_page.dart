import 'package:bottombar/theme/colors.dart';
import 'package:bottombar/views/booking/booking_page.dart';
import 'package:bottombar/views/chat/chat_page.dart';
import 'package:bottombar/views/explore/explore_page.dart';
import 'package:bottombar/views/home/home_page.dart';
import 'package:bottombar/views/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentTab = 0;
  List pageList = const [
    HomePage(),
    ExplorePage(),
    BookingPage(),
    ChatPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kprimaryColor : Colors.grey),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.location5 : Iconsax.location,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 2;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.calculator5 : Iconsax.calculator,
                    color: currentTab == 2 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Booking",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kprimaryColor : Colors.grey),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Iconsax.chart5 : Iconsax.chart,
                    color: currentTab == 3 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 3 ? kprimaryColor : Colors.grey),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = 4;
                });
              },
              child: Column(
                children: [
                  Icon(
                    currentTab == 4 ? Iconsax.setting5 : Iconsax.setting,
                    color: currentTab == 4 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 4 ? kprimaryColor : Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: pageList[currentTab],
    );
  }
}
