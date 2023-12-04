import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pro_1/home_screen/view.dart';
import 'package:pro_1/shared/design/app_image.dart';
import 'package:pro_1/shared/logic/helper_methods.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      navigateTo(const HomeScreen());
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff43B248),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const AppImage(
            "assets/images/splash.svg",
              fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                child: const AppImage(
                  "assets/images/logo.svg",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "الاّربعين النووية",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
