// To parse this JSON data, do
//
//     final topThree = topThreeFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<TopThree> topThreeFromJson(String str) => List<TopThree>.from(json.decode(str).map((x) => TopThree.fromJson(x)));

String topThreeToJson(List<TopThree> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TopThree {
    String uuid;
    String symbol;
    String name;

    String iconUrl;
    String marketCap;
    String price;
    int listedAt;
    int tier;
    String change;
    int rank;
    List<dynamic> sparkline;
    bool lowVolume;
    String coinrankingUrl;
    String the24HVolume;
    String btcPrice;

    TopThree({
        required this.uuid,
        required this.symbol,
        required this.name,
       
        required this.iconUrl,
        required this.marketCap,
        required this.price,
        required this.listedAt,
        required this.tier,
        required this.change,
        required this.rank,
        required this.sparkline,
        required this.lowVolume,
        required this.coinrankingUrl,
        required this.the24HVolume,
        required this.btcPrice,
    });

    factory TopThree.fromJson(Map<String, dynamic> json) => TopThree(
        uuid: json["uuid"],
        symbol: json["symbol"],
        name: json["name"],
       
        iconUrl: json["iconUrl"],
        marketCap: json["marketCap"],
        price: json["price"],
        listedAt: json["listedAt"],
        tier: json["tier"],
        change: json["change"],
        rank: json["rank"],
        sparkline: List<dynamic>.from(json["sparkline"].map((x) => x)),
        lowVolume: json["lowVolume"],
        coinrankingUrl: json["coinrankingUrl"],
        the24HVolume: json["24hVolume"],
        btcPrice: json["btcPrice"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "symbol": symbol,
        "name": name,
     
        "iconUrl": iconUrl,
        "marketCap": marketCap,
        "price": price,
        "listedAt": listedAt,
        "tier": tier,
        "change": change,
        "rank": rank,
        "sparkline": List<dynamic>.from(sparkline.map((x) => x)),
        "lowVolume": lowVolume,
        "coinrankingUrl": coinrankingUrl,
        "24hVolume": the24HVolume,
        "btcPrice": btcPrice,
    };
}
