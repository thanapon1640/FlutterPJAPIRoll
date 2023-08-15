import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectapi/binding/root_binding.dart';
import 'package:projectapi/pages/home_page.dart';
import 'package:projectapi/pages/test_api.dart';

void main(List<String> args) {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: RootBinding(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page: ()=>HomePage()),
      // ],
      home: HomePage(),
    );
  }
}
