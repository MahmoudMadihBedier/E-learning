import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../core/Screens/signinScreen.dart';
import 'material/s_button.dart';

class MainScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 800);

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: TextButton(
          onPressed: () {
            // Add  onPressed !
          },
          child:  Text(
            'admin',
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Add  onPressed code here!
            },
            child: Text(
              'instructor',
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;
          const Duration duration = Duration(milliseconds: 800);

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FadeInUp(
                    duration: duration,
                    delay: const Duration(milliseconds: 2000),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                      width: width,
                      height: height * 0.4,
                      child: Lottie.asset("assets/wl.json", animate: true),
                    ),
                  ),

                  const SizedBox(height: 15),

                  FadeInUp(
                    duration: duration,
                    delay: const Duration(milliseconds: 1600),
                    child: const Text(
                      "Keep",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(height: 10),

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

                  const SizedBox(height: 40),

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
                        Get.to(const SigninScreen());
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

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

                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
