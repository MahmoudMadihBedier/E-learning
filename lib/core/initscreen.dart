import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class initScreen extends StatefulWidget {
  const initScreen({super.key});

  @override
  State<initScreen> createState() => _initScreenState();
}

class _initScreenState extends State<initScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset('assets/Chatappicon.png'),
                  height: 180,
                  margin: EdgeInsets.all(8),
                ),
                Text("Yippy",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ,
                    color: Colors.green.shade300
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
