import 'package:flutter/material.dart';
import 'package:sasta_bazar/utils/app_constant.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(AppConstant.appMainName),
        centerTitle: true,
      ),
         body: const Column(children: [
          Text('hello sonu how are you')
         ],),
    );
  }
}