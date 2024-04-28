import 'package:chatapp/UIwidgets/massageWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final _firestore =FirebaseFirestore.instance;
late User signInUser;  //to save the user mail that will send

class ChatScreen extends StatefulWidget {

  static const String ScreenRoute ="ChatScreen" ;
  const ChatScreen({super.key});


  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
 final massageTextcontrolar=TextEditingController();
  final _auth=FirebaseAuth.instance;
  // late User signInUser;  //to save the user mail that will send
  String? massageText;  // to save the massage that will be send
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
  // Future<void> geyMassages() async {
  //   final massages= await _firestore.collection('massages').get();
  //   for(var massage in massages.docs){
  //     print(massage.data());
  //   }
  // }
  void massageStreem()async{
   await for(var snapshot in _firestore.collection('massages').snapshots()){
     for(var massage in snapshot.docs){
       print(massage.data());
     }
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
              onPressed:(){
               _auth.signOut();
               Navigator.pop(context);
              },
              icon: Icon(Icons.logout_outlined),color: Colors.white,)
        ],

      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const MassageStreemBulider(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                    top:
                    BorderSide(color: Color(0xfffed064), width: 2))
                ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                        controller: massageTextcontrolar,
                        onChanged: (value) {
                          massageText=value;
                        },
                        decoration: const InputDecoration(
                            contentPadding:EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                          hintText: 'Write your massage',
                          border: InputBorder.none,
                        ),

                      ),),
                  TextButton(onPressed: (){
                    massageTextcontrolar.clear();
                   massageStreem();
                    // geyMassages();
                    _firestore.collection('massages').add( {
                      'text':massageText,
                      'sender':signInUser.email,
                      'time':FieldValue.serverTimestamp(),
                    });
                  },
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
class MassageStreemBulider extends StatelessWidget {
  const MassageStreemBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('massages').orderBy('time').snapshots(),
        builder: (context ,snapshot){
          List<MassageLine> massageWidgets =[];
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green.shade300,
                strokeAlign: 30 ,

              ),
            );
          }
          final massages=snapshot.data!.docs.reversed;
          for(var massage in massages){
            final massageText =massage.get('text');
            final massageSender =massage.get('sender');
            final currentUser =signInUser.email;
            if(currentUser==massageSender){
              // the code of the massage user
            }
            final massageWidget =
            MassageLine(
              sender: massageSender,
              text: massageText,
              isMe: currentUser==massageSender ,
            );
            // Text('$massageText---$massageSender');
            // massageWidgets.add(massageWidget);
            // Text('$massageText---$massageSender');
            // massageWidgets.add(massageWidget);
            massageWidgets.add(massageWidget);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 20),
              children: massageWidgets,

            ),
          );
        }
    );
  }
}

class MassageLine extends StatelessWidget {
  const MassageLine({ required this.isMe,this.sender, this.text,super.key});
final String? sender ;
final String? text ;
final bool isMe;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: isMe? CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
          Text('$sender',
            style:TextStyle(fontSize: 12 ,color: Colors.black45,) ,),
          Material(
            elevation: 5,
            borderRadius: isMe?BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)
            ):
            BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)
            )
              ,
              color:isMe ? Colors.green.shade300 : Color(0xfffed064) ,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Text('$text',
                  style:TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ) ,),
              )),
        ],
      ),
    );


  }
}