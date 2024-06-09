import 'package:chatapp/core/Screens/chatScreen.dart';
import 'package:chatapp/core/initscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/Screens/regisrtation.dart';
import 'core/Screens/signinScreen.dart';
import 'firebase_options.dart';
import 'learn/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yipy',
      home: MainScreen(),

      // home: ChatScreen (),
      // initialRoute: initScreen.ScreenRoute,
      // routes: {
      //   initScreen.ScreenRoute:(context)=>initScreen(),
      //   SigninScreen.ScreenRoute:(context)=>SigninScreen(),
      //   regestrationScreen.ScreenRoute:(context)=>regestrationScreen(),
      //   ChatScreen.ScreenRoute:(context)=>ChatScreen(),
      //},
    );
  }
}

