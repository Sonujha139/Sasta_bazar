import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app_constant.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(const Duration(seconds: 5),(){Get.offAll(()=> const WelcomeScreen());},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      body: Container(
        width: Get.width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Lottie.asset('assets/images/splash-icon.json'),
              ),
            ), 
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(AppConstant.appPowerdBy,            
              style: const TextStyle(color: AppConstant.appStatusBarColor,fontSize: 12.0), 
              ),
            )
          ],
        ),
      ),
    );
  }
}