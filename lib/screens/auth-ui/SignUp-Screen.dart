import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:sasta_bazar/screens/auth-ui/SignIn-Screen.dart';
import 'package:sasta_bazar/utils/app_constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
     builder: (context, isKeyboardVisible){
      return  Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: Get.height/20,),
              const Text('Welcome to our app', style: TextStyle(color: AppConstant.appSecondaryColor,fontWeight: FontWeight.bold,)),
                SizedBox(height: Get.height/20,),
                 Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondaryColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: ' User Name',
                        contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                        prefixIcon: const Icon(Icons.person),
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                        prefixIcon: const Icon(Icons.phone),
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
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'City',
                        contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                        prefixIcon: const Icon(Icons.location_city),
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
                
                  SizedBox(height: Get.height/20,),
                 Material(
                  child: Container(
                    width: Get.width/2,
                    height: Get.height/18,
                    decoration: BoxDecoration(
                      color: AppConstant.appSecondaryColor, 
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: TextButton(onPressed: (){}, child: const Text('SignUp', style: TextStyle(color: AppConstant.appStatusBarColor),))
                  ),
                ),
                 SizedBox(height: Get.height/20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const  Text("All Ready have an account?", style: TextStyle(color: AppConstant.appSecondaryColor),),
                     InkWell(
                     onTap: (){
                      Get.offAll(SigninScreen());
                    },
                      child: const Text(" Sign In", style: TextStyle(color: AppConstant.appSecondaryColor, fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
          ),
        ),
      );
     }
     
    );
  }
}