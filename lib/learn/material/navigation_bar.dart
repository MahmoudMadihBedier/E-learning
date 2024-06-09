// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CurvedNavigationBar extends StatefulWidget {
//   const CurvedNavigationBar({super.key});
//
//   @override
//   State<CurvedNavigationBar> createState() => _CurvedNavigationBarState();
// }
//
// class _CurvedNavigationBarState extends State<CurvedNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Container(
//       child: CurvedNavigationBar(
//         items: const [
//           Icon(Icons.home,color: Colors.white,),
//           Icon(Icons.favorite,color: Colors.white),
//           Icon(Icons.alarm_on,color: Colors.white),
//           Icon(Icons.person,color: Colors.white),
//         ],
//         backgroundColor: Colors.white,
//         color: Colors.deepPurple,
//         animationDuration: Duration(milliseconds: 200),
//         animationCurve: Curves.bounceIn,
//         onTap: (index){
//           //moving routes
//           print(index);
//         },),
//       ));}}
//
