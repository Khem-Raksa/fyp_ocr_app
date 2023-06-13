import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff27374D, {
         50: Color(0xff27374D),
        100: Color(0xff27374D),
        200: Color(0xff27374D),
        300: Color(0xff27374D),
        400: Color(0xff27374D),
        500: Color(0xff27374D),
        600: Color(0xff27374D),
        700: Color(0xff27374D),
        800: Color(0xff27374D),
        900: Color(0xff27374D),
}),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MyHomePage(title: 'FYP OCR Demo App',)))
          );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height:300,
              width: 300,
              color: Colors.white,
              child: Lottie.asset("assets/ai.json")
            ),
          ),
        ],
      ),
    );
  }
}


