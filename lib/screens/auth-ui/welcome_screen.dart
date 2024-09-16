import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sasta_bazar/utils/app_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstant.appSecondaryColor,
        title: const Text('Welcome to My App', style: TextStyle(color: AppConstant.appStatusBarColor),),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/splash-icon.json'),
            ), 
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text('Happy Shopping', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),

              SizedBox(height: Get.height /12,),
              Material(
                child: Container(
                  width: Get.width/1.2,
                  height: Get.height/12,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor, 
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: TextButton.icon(  icon: Image.asset('assets/images/final-google-logo.png', width: Get.width/12, height: Get.height/12,) ,onPressed: (){}, label: const Text('Sign in with Google', style: TextStyle(color: AppConstant.appStatusBarColor),),),
                ),
              ),

              SizedBox(height: Get.height /12,),
              
               Material(
                child: Container(
                  width: Get.width/1.2,
                  height: Get.height/12,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor, 
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton.icon(  icon: const Icon(Icons.email, color: AppConstant.appStatusBarColor,) ,onPressed: (){}, label: const Text('Sign in with Google', style: TextStyle(color: AppConstant.appStatusBarColor),),),
                ),
              )
          ],
        ),
      ),
    );
  }
}