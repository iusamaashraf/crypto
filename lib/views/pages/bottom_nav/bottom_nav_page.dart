import 'package:crypto/constants/colors.dart';
import 'package:crypto/views/pages/bottom_nav/tabs/home/home_page.dart';
import 'package:crypto/views/pages/bottom_nav/tabs/notifications/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;
  final _pages = [
    const HomePage(),
    Container(),
    Container(),
    const NotificationsPage(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _pages[selectedIndex],
            ),
            Container(
              height: Get.height * 0.07,
              width: Get.width * 0.95,
              decoration: BoxDecoration(
                  color: ColorClass.secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 14,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomNav(Icons.home_filled, 'Home', 0),
                  bottomNav(Icons.auto_graph_sharp, 'Signal', 1),
                  bottomNav(Icons.timeline_rounded, 'Signal Sharing', 2),
                  bottomNav(Icons.notifications_active, 'Notifications', 3),
                  bottomNav(Icons.person, 'Account', 4),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav(IconData image, String name, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            image,
            color: index == selectedIndex
                ? ColorClass.lightWhiteColor
                : Colors.grey,
            // size: 18,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: index == selectedIndex
                      ? ColorClass.lightWhiteColor
                      : Colors.grey,
                ),
          )
        ],
      ),
    );
  }
}
