import 'package:flutter/material.dart';

enum NoticationColor {
  green,
  blue,
  orange,
  red,
}

class NotificationModel {
  final String title;
  final IconData icon;
  final NoticationColor notificationColor;
  NotificationModel({
    required this.title,
    required this.icon,
    required this.notificationColor,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
    title: 'A successfull toast',
    icon: Icons.done,
    notificationColor: NoticationColor.green,
  ),
  NotificationModel(
    title: 'An information toast',
    icon: Icons.info,
    notificationColor: NoticationColor.blue,
  ),
  NotificationModel(
    title: 'A warning toast',
    icon: Icons.warning_amber_rounded,
    notificationColor: NoticationColor.orange,
  ),
  NotificationModel(
    title: 'A destructive toast',
    icon: Icons.warning_amber_rounded,
    notificationColor: NoticationColor.red,
  ),
];
