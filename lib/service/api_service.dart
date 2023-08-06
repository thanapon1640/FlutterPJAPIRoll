import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:developer';

import 'package:projectapi/model/top_three_coins.dart';

class ApiService {
  String endPoint = "https://api.coinranking.com/v2";

  Map<String, String> headers = {
    'content-Type': 'application/json',
    'Accept': 'application/json'
  };

  Future<List<TopThree>?> getThreeTopCoins() async {
    final response =
        await http.get(Uri.parse('$endPoint/coins'), headers: headers);
    log('${response.statusCode}');

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final jsonString = jsonEncode(json["data"]["coins"]);

      //var newStr = jsonString.substring(1, jsonString.length - 1);

      //log('${newStr}');
      // log('${coins.length}');
      final topthree = topThreeFromJson(jsonString);
      log('${topthree.length}');
      return topthree;
      //return newStr;
    } else {}
    return null;
  }
}
