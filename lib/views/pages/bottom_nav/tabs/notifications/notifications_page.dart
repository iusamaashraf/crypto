import 'package:crypto/constants/colors.dart';
import 'package:crypto/views/pages/bottom_nav/tabs/notifications/notification_tab/order_message_page.dart';
import 'package:crypto/views/pages/bottom_nav/tabs/notifications/notification_tab/system_information_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  int selectedIndex = 0;
  final _pages = [
    const OrderMessagePage(),
    const SystemInformationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          Container(
            width: Get.width * 0.9,
            height: Get.height * 0.06,
            decoration: BoxDecoration(
              color: ColorClass.secondaryColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 12, spreadRadius: 1),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  notificationTab('Order Message', 0),
                  notificationTab('System Information', 1),
                ],
              ),
            ),
          ),
          Expanded(
            child: _pages[selectedIndex],
          ),
        ],
      ),
    );
  }

  Widget notificationTab(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: SizedBox(
        // width: Get.width * 0.1,
        height: Get.height * 0.06,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: index == selectedIndex ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }
}
