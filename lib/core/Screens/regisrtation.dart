import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../UIwidgets/buttonSINgUP.dart';

class regestrationScreen extends StatefulWidget {
  static const String ScreenRoute ="regestrationScreen" ;
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
            ),
            SizedBox( height: 50,),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                textAlign: TextAlign.start,
                onChanged: (value){},
              decoration: InputDecoration(
                hintText: ' Enter your E-mail ',
                contentPadding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green.shade300),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ) ,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfffed064), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ) ,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                textAlign: TextAlign.start,
                onChanged: (value){},
                decoration: InputDecoration(
                  hintText: ' Enter your password ',
                  contentPadding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ) ,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfffed064), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ) ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: regsterButton(
                color: Color(0xfffed064),
                title:" Register ",
                onprassed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
