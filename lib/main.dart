import 'package:flutter/material.dart';
import 'package:flutterpersonal/view/home_page.dart';
import 'package:get/get.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFF94cec6),
      ),
      home: HomePage(),
    );
  }
}