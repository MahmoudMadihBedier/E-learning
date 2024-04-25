import 'package:flutter/material.dart';

import 'core/Screens/regisrtation.dart';
import 'core/Screens/signinScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yipy',

      home: SigninScreen (),
    );
  }
}

