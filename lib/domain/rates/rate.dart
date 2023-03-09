class Rate {
  String? symbol;
  num? price;

  Rate({
    this.symbol,
    this.price,
  });

  Rate.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    price = json['price'];
  }
}
