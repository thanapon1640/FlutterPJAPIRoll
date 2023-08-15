
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class TestApi extends StatefulWidget {
  const TestApi({super.key});

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  late Future<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
   // ApiService().getThreeTopCoins();

    return Scaffold(
      body: Container(
        
      ),
    );
  }
}
