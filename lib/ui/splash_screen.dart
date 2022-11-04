import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jcc_day2/data/storage_core.dart';
import 'package:jcc_day2/main.dart';
import 'package:jcc_day2/ui/second_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final storage = StorageCore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/pacman_loading.json"),
      ),
    );
  }

  @override
  void initState() {
    storage.ensureStorageReady();
    Timer(const Duration(seconds: 5), () {
      if(storage.getAccessToken() == null || storage.getAccessToken() == "token_not_loaded") {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
      }
    });
    super.initState();
  }
}
