import 'package:flutter/material.dart';
import 'package:pro_1/shared/design/app_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            alignment: Alignment.center,
            children: [
               AppImage(
                 "assets/images/splash.svg",
                 color: const Color(0xff49C649).withOpacity(.01),
                 height: double.infinity,
                 width: double.infinity,
                 fit: BoxFit.cover,
               ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: AppImage(
                      "assets/images/mini_logo.svg",
                     ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text.rich(
                    textAlign: TextAlign.right,
                    TextSpan(
                      text: "الأربعين النووية\n",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                    ),
                      children: [
                        TextSpan(
                          text: "لحفظ وسماع الاحاديث النبوية",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 117,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(colors: [
                        Color(0xff49C649),
                        Color(0xff336325),
                      ],
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppImage(
                          "assets/images/quran(3).png",
                          height: 85,
                          width: 85,
                        ),
                        Text(
                          "الاحاديث الاربعين",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        AppImage(
                          "assets/images/star1.svg",
                          height: 35,
                          width: 35,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 117,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff49C649),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppImage(
                          "assets/images/ahadis.svg",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 117,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(colors: [
                        Color(0xffB42C2C),
                        Color(0xff422563),
                      ],
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppImage(
                          "assets/images/save-instagram.png",
                          height: 76,
                          width: 76,
                        ),
                        Text(
                          "الاحاديث المحفوظة",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        AppImage(
                          "assets/images/star3.svg",
                          height: 35,
                          width: 35,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
