import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:projectapi/model/top_three_coins.dart';

class ApiService {
  static Future<List?> fechCoins() async {
    var respone = await http.get(Uri.parse("https://api.coinranking.com/v2"));
    if (respone.statusCode==200) {
      return 
    }
  }
}









// class ApiService extends GetxController {
//   RxList<TopThree> topthreesList = <TopThree>[].obs;

//   void onInit() {
//     super.onInit();
//     fetchCoins();
//   }

//   fetchCoins() async {
//     try {
//       final response =
//           await http.get(Uri.parse("https://api.coinranking.com/v2"));
//       List<TopThree> topthrees = topThreeFromJson(response.body) as List<TopThree>;
//       topthreesList.value = topthrees;
//     } catch (e) {
//       return null;
//     }
//   }
// }

// class ApiService {
//   String endPoint = "https://api.coinranking.com/v2";

//   Map<String, String> headers = {
//     'content-Type': 'application/json',
//     'Accept': 'application/json'
//   };

//   Future<String?> getThreeTopCoins() async {
//     final response =
//         await http.get(Uri.parse('$endPoint/coins'), headers: headers);
//     log('${response.statusCode}');

//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body);
//       final jsonString = jsonEncode(json["data"]["coins"]);

//       var newStr = jsonString.substring(1, jsonString.length - 1);

//       //log('${newStr}');
//       // log('${coins.length}');
//      // final topthree = topThreeFromJson(jsonString);
//       log('${newStr}');
//       //return topthree;
//       return newStr;
//     } else {
//     return null;}
//   }
// }
    