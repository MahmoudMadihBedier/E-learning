import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ChatScreen extends StatefulWidget {
  static const String ScreenRoute ="ChatScreen" ;
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth=FirebaseAuth.instance;
  late User signInUser;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getCurrentUser();
  }
  void getCurrentUser(){
    try{
      final user =_auth.currentUser;
      if (user!=null){
        signInUser=user;
        print(signInUser.email);
      }
    }catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: // CircleBorder(eccentricity: 30) ,
        Border(
            bottom:
        BorderSide(color: Color(0xfffed064), width: 2),
            top:
        BorderSide(color: Color(0xfffed064), width: 2)),
        backgroundColor: Colors.green.shade300.withOpacity(0.6),
        title: Row(
          children: [
            Image.asset("assets/Chatappicon.png",height: 45,),
            SizedBox(width: 10,),
            Text("Yippy",
                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900 ,
              color: Colors.green.shade300),),
          ],
        ),
        actions: [
          IconButton(
              onPressed:(){},
              icon: Icon(Icons.logout_outlined),color: Colors.white,)
        ],

      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top:
                    BorderSide(color: Color(0xfffed064), width: 2))
                ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                        onChanged: (value) {

                        },
                        decoration: InputDecoration(
                            contentPadding:EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                          hintText: 'Write your massage',
                          border: InputBorder.none,
                        ),

                      ),),
                  TextButton(onPressed: (){},
                      child:Text('send',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color:Colors.green.shade300,
                      ),))
                ],
              ),
              ),
          ],

        ),

      ),


    );
  }
}
