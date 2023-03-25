import 'package:crypto/constants/colors.dart';
import 'package:crypto/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderMessagePage extends StatefulWidget {
  const OrderMessagePage({super.key});

  @override
  State<OrderMessagePage> createState() => _OrderMessagePageState();
}

class _OrderMessagePageState extends State<OrderMessagePage> {
  NotificationModel? notificationModel = NotificationModel(
      title: '', icon: Icons.abc, notificationColor: NoticationColor.orange);
  Color? colorTile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: notificationList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
                child: Container(
                  height: Get.height * 0.09,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorClass.lightWhiteColor,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            notificationList[index].icon,
                            color: ColorClass.primaryColor,
                          ),
                        ),
                      ),
                      Text(notificationList[index].title)
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  toastText() {
    switch (notificationModel!.notificationColor) {
      case NoticationColor.green:
        colorTile = Colors.green;
        break;
      case NoticationColor.blue:
        colorTile = Colors.blue;
        break;
      case NoticationColor.orange:
        colorTile = Colors.orange;
        break;
      case NoticationColor.red:
        colorTile = Colors.red;
        break;
    }
  }
}
