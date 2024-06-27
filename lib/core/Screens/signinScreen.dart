import 'package:animate_do/animate_do.dart';
import 'package:chatapp/core/Screens/chatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../UIwidgets/buttonSINgUP.dart';
import '../../learn/view/home_page.dart';

class SigninScreen extends StatefulWidget {
  static const String ScreenRoute = 'SigninScreen';

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool LoadingIcon = false;
  final _auth = FirebaseAuth.instance;

  static late final user;

  late String Email;
  late String Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: LoadingIcon,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;
            const Duration duration = Duration(milliseconds: 800);

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start,
                        onChanged: (value) {
                          Email = value;
                        },
                        decoration: InputDecoration(
                          hintText: ' Enter your E-mail ',
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfffed064), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.start,
                        onChanged: (value) {
                          Password = value;
                        },
                        decoration: InputDecoration(
                          hintText: ' Enter your password ',
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfffed064), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: regsterButton(
                        color:Colors.deepPurple,
                        title: " Sign in ",
                        onprassed: () async {
                          setState(() {
                            LoadingIcon = true;
                          });

                          try {
                            user = await _auth.signInWithEmailAndPassword(email: Email, password: Password);
                            if (user != null) {
                              Get.to(MyHomePage());
                              setState(() {
                                LoadingIcon = false;
                              });
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
