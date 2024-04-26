import 'package:chatapp/core/Screens/chatScreen.dart';
import 'package:chatapp/core/initscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'core/Screens/regisrtation.dart';
import 'core/Screens/signinScreen.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final _auth =FirebaseAuth.instance;
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yipy',

      // home: ChatScreen (),
      initialRoute:_auth.currentUser != null? ChatScreen.ScreenRoute: initScreen.ScreenRoute,
      routes: {
        initScreen.ScreenRoute:(context)=>initScreen(),
        SigninScreen.ScreenRoute:(context)=>SigninScreen(),
        regestrationScreen.ScreenRoute:(context)=>regestrationScreen(),
        ChatScreen.ScreenRoute:(context)=>ChatScreen(),
      },
    );
  }
}

