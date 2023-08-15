// To parse this JSON data, do
//
//     final topThree = topThreeFromJson(jsonString);

import 'dart:convert';

TopThree topThreeFromJson(String str) => TopThree.fromJson(json.decode(str));

String topThreeToJson(TopThree data) => json.encode(data.toJson());

class TopThree {
    String? status;
    Data? data;

    TopThree({
        this.status,
        this.data,
    });

    factory TopThree.fromJson(Map<String, dynamic> json) => TopThree(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class Data {
    Stats? stats;
    List<Coin>? coins;

    Data({
        this.stats,
        this.coins,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
        coins: json["coins"] == null ? [] : List<Coin>.from(json["coins"]!.map((x) => Coin.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "stats": stats?.toJson(),
        "coins": coins == null ? [] : List<dynamic>.from(coins!.map((x) => x.toJson())),
    };
}

class Coin {
    String? uuid;
    String? symbol;
    String? name;
    String? color;
    String? iconUrl;
    String? marketCap;
    String? price;
    int? listedAt;
    int? tier;
    String? change;
    int? rank;
    List<String?>? sparkline;
    bool? lowVolume;
    String? coinrankingUrl;
    String? the24HVolume;
    String? btcPrice;

    Coin({
        this.uuid,
        this.symbol,
        this.name,
        this.color,
        this.iconUrl,
        this.marketCap,
        this.price,
        this.listedAt,
        this.tier,
        this.change,
        this.rank,
        this.sparkline,
        this.lowVolume,
        this.coinrankingUrl,
        this.the24HVolume,
        this.btcPrice,
    });

    factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        uuid: json["uuid"],
        symbol: json["symbol"],
        name: json["name"],
        color: json["color"],
        iconUrl: json["iconUrl"],
        marketCap: json["marketCap"],
        price: json["price"],
        listedAt: json["listedAt"],
        tier: json["tier"],
        change: json["change"],
        rank: json["rank"],
        sparkline: json["sparkline"] == null ? [] : List<String?>.from(json["sparkline"]!.map((x) => x)),
        lowVolume: json["lowVolume"],
        coinrankingUrl: json["coinrankingUrl"],
        the24HVolume: json["24hVolume"],
        btcPrice: json["btcPrice"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "symbol": symbol,
        "name": name,
        "color": color,
        "iconUrl": iconUrl,
        "marketCap": marketCap,
        "price": price,
        "listedAt": listedAt,
        "tier": tier,
        "change": change,
        "rank": rank,
        "sparkline": sparkline == null ? [] : List<dynamic>.from(sparkline!.map((x) => x)),
        "lowVolume": lowVolume,
        "coinrankingUrl": coinrankingUrl,
        "24hVolume": the24HVolume,
        "btcPrice": btcPrice,
    };
}

class Stats {
    int? total;
    int? totalCoins;
    int? totalMarkets;
    int? totalExchanges;
    String? totalMarketCap;
    String? total24HVolume;

    Stats({
        this.total,
        this.totalCoins,
        this.totalMarkets,
        this.totalExchanges,
        this.totalMarketCap,
        this.total24HVolume,
    });

    factory Stats.fromJson(Map<String, dynamic> json) => Stats(
        total: json["total"],
        totalCoins: json["totalCoins"],
        totalMarkets: json["totalMarkets"],
        totalExchanges: json["totalExchanges"],
        totalMarketCap: json["totalMarketCap"],
        total24HVolume: json["total24hVolume"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "totalCoins": totalCoins,
        "totalMarkets": totalMarkets,
        "totalExchanges": totalExchanges,
        "totalMarketCap": totalMarketCap,
        "total24hVolume": total24HVolume,
    };
}
