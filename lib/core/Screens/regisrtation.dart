// import 'dart:html';

import 'package:chatapp/core/Screens/chatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../UIwidgets/buttonSINgUP.dart';

class regestrationScreen extends StatefulWidget {
  static const String ScreenRoute ="regestrationScreen" ;
  const regestrationScreen({super.key});

  @override
  State<regestrationScreen> createState() => _regestrationScreenState();
}

class _regestrationScreenState extends State<regestrationScreen> {
  bool LoadingIcon= false;
  final _auth=FirebaseAuth.instance ;
  late String Email;
  late String Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: LoadingIcon,
        child: Padding(
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
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  onChanged: (value){
                    Email=value;
                  },
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
                  obscureText: true,
                  textAlign: TextAlign.start,
                  onChanged: (value){
                    Password=value;
                  },
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
                  onprassed: () async {
                    setState(() {
                      LoadingIcon=true;
                    });
                    try{
                      final NewUser=await _auth.createUserWithEmailAndPassword(
                          email: Email,
                          password: Password
                      );
                      Navigator.pushNamed(context, ChatScreen.ScreenRoute);
                      setState(() {
                        LoadingIcon=false;
                      });
                    }catch(e){
                      print(e);
        
                    }
                    // print(Email);
                    // print( Password);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
