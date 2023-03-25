import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:crypto/constants/colors.dart';
import 'package:crypto/models/coins_model.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'componens/recent_coin_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currencySymbol = '';
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Get.height * 0.4,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: ColorClass.secondaryColor.withOpacity(.7),
                      boxShadow: const [
                        BoxShadow(color: Colors.black38, blurRadius: 18),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  '20 159.52 ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                                currencySymbol.isEmpty
                                    ? Text(
                                        'USD',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(color: Colors.white),
                                      )
                                    : Text(
                                        currencySymbol,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(color: Colors.white),
                                      ),
                                IconButton(
                                  onPressed: () {
                                    showCurrencyPicker(
                                      context: context,
                                      showFlag: true,
                                      showCurrencyName: true,
                                      showCurrencyCode: true,
                                      onSelect: (Currency currency) {
                                        setState(() =>
                                            currencySymbol = currency.code);
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Balance',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '+1238.46',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.grey.shade300),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RecentCoinTile(
                                onTap: () {},
                                cointName: 'BTC',
                                percent: '40 %',
                                profit: '+5%',
                              ),
                              RecentCoinTile(
                                onTap: () {},
                                cointName: 'ETH',
                                percent: '67 %',
                                profit: '+3%',
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.05),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(
                          //       horizontal: Get.width * 0.08),
                          //   child: Row(
                          //     children: [
                          //       GestureDetector(
                          //         onTap: () {
                          //           setState(() {
                          //             isExpanded = true;
                          //           });
                          //         },
                          //         child: Container(
                          //           height: Get.height * 0.06,
                          //           width: Get.width * 0.12,
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(12),
                          //               color: Colors.transparent,
                          //               border: Border.all(
                          //                   width: 2,
                          //                   color:
                          //                       Colors.white.withOpacity(.5))),
                          //           child: const Center(
                          //             child: Icon(
                          //               Icons.add,
                          //               color: Colors.white,
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(width: 10),
                          //       Text(
                          //         'Add Funds',
                          //         style: Theme.of(context)
                          //             .textTheme
                          //             .subtitle1!
                          //             .copyWith(color: Colors.white),
                          //       )
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(bottom: 50),
                    itemCount: coinList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          // onTap: () => Get.to(() => CoinDetailPage()),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorClass.secondaryColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12, blurRadius: 12),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(.4),
                                    backgroundImage:
                                        AssetImage(coinList[index].coin!),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    coinList[index].coinName!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '\$ ${coinList[index].price!}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40.0,
                                    child: Sparkline(
                                      averageLine: true,
                                      data: data,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        coinList[index].profit!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                              color: coinList[index].isProfit!
                                                  ? Colors.white.withOpacity(.5)
                                                  : Colors.red,
                                            ),
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          color: Colors.white.withOpacity(.5),
                                          size: 16)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
