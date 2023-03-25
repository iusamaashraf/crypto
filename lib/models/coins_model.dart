class CoinModel {
  String? coin;
  String? coinName;
  String? price;
  String? profit;
  bool? isProfit;
  CoinModel({
    required this.coin,
    required this.coinName,
    required this.price,
    required this.profit,
    this.isProfit = true,
  });
}

List<CoinModel> coinList = [
  CoinModel(
      coin: 'assets/images/bitcoin.png',
      coinName: 'Bitcoin',
      price: '8,967.21',
      profit: '+41.30%'),
  CoinModel(
      coin: 'assets/images/ethereum.png',
      coinName: 'Ethereum',
      price: '5,312.17',
      profit: '+19.25%'),
  CoinModel(
      coin: 'assets/images/litecoin.png',
      coinName: 'Litecoin',
      price: '2,543.76',
      profit: '+10.30%'),
  CoinModel(
    coin: 'assets/images/peercoin.png',
    coinName: 'Peercoin',
    price: '4,786.22',
    profit: '-22.13%',
    isProfit: false,
  ),
];
