import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sasta_bazar/screens/auth-ui/SignUp-Screen.dart';
import 'package:sasta_bazar/utils/app_constant.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
     builder: (context, isKeyboardVisible){
      return  Scaffold(
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible? const SizedBox()
              :Column(
                children: [                
               Lottie.asset('assets/images/splash-icon.json')
                ],
              ),
              SizedBox(height: Get.height/20,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.centerRight,
                child: const Text('Forgot Password', style: TextStyle(color: AppConstant.appSecondaryColor, fontWeight: FontWeight.bold),),
              ),
                SizedBox(height: Get.height/20,),
               Material(
                child: Container(
                  width: Get.width/2,
                  height: Get.height/18,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor, 
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: TextButton(onPressed: (){}, child: const Text('SignIn', style: TextStyle(color: AppConstant.appStatusBarColor),))
                ),
              ),
               SizedBox(height: Get.height/20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text("Don't have an account?", style: TextStyle(color: AppConstant.appSecondaryColor),),
                   InkWell(
                    onTap: (){
                      Get.offAll(SignUpScreen());
                    },
                    child: const Text(" Sign Up", style: TextStyle(color: AppConstant.appSecondaryColor, fontWeight: FontWeight.bold),))
                ],
              )
            ],
          ),
        ),
      );
     }
     
    );
  }
}