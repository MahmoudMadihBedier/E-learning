import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class regestrationScreen extends StatefulWidget {
  const regestrationScreen({super.key});

  @override
  State<regestrationScreen> createState() => _regestrationScreenState();
}

class _regestrationScreenState extends State<regestrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset("assets/Chatappicon.png"),
            )
          ],
        ),
      ),
    );
  }
}
