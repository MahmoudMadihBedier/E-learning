
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../core/Screens/signinScreen.dart';
import 'material/s_button.dart';

class MainScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 800);

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Container(
        margin: const EdgeInsets.all(8),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ///
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 2000),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 50,
                  left: 5,
                  right: 5,
                ),
                width: size.width,
                height: size.height / 2,
                child: Lottie.asset("assets/wl.json", animate: true),
              ),
            ),

            ///
            const SizedBox(
              height: 15,
            ),

            /// TITLE
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 1600),
              child: const Text(
                "Keep",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),

            ///
            const SizedBox(
              height: 10,
            ),

            /// SUBTITLE
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 1000),
              child: const Text(
                "Keep various ways to contact and get in touch easily right from the app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.2,
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ),

            ///
            Expanded(child: Container()),

            /// GOOGLE BTN
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 600),
              child: SButton(
                size: size,
                borderColor: Colors.grey,
                color: Colors.white,
                img: 'assets/g.png',
                text: "Continue with Google",
                textStyle: null,
                onTap: () {
                  // Navigate to the new route using GetX
                  Get.to(SigninScreen());
                },
              ),
            ),

            ///
            const SizedBox(
              height: 20,
            ),

            /// GITHUB BTN
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 200),
              child: SButton(
                size: size,
                borderColor: Colors.white,
                color: Colors.deepPurple.shade800,
                img: 'assets/Register.png',
                text: "Go in Register mode",
                textStyle: const TextStyle(color: Colors.white),
                onTap: () {
                  // Navigate to the new route using GetX
                  Get.to(SigninScreen());
                },
              ),
            ),

            ///
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
