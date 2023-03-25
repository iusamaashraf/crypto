import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentCoinTile extends StatelessWidget {
  const RecentCoinTile({
    Key? key,
    required this.cointName,
    required this.percent,
    required this.profit,
    required this.onTap,
  }) : super(key: key);
  final String cointName;
  final String percent;
  final String profit;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width * 0.3,
        height: Get.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withOpacity(.5), width: 2.5),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(.2),
              Colors.white.withOpacity(.1),
            ],
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cointName,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  percent,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  profit,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white.withOpacity(.5)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
