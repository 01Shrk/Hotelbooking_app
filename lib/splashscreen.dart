import 'dart:async';

import 'package:flutter/material.dart';

import 'homescreen.dart';
class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => splashscreenstate();
}
class splashscreenstate extends State<splashscreen>{
  @override
    void initState(){
      super.initState();
      Timer(const Duration(seconds: 2), () { Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> homescreen(),));});}
          Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(0.7),
      body: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: 'T r A v O l E n C e',
                    style: TextStyle(fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.w100,3.5),fontSize: 37,color: Colors.black)),),
          const SizedBox(
            height: 10,
          ),
              RichText(
                text: TextSpan(
                    text: 'Always Exploring',
                    style: TextStyle(fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.w100,3.5),fontSize: 20,color: Colors.black)),),
            ],
          ),
        ],
      ),
    );
  }

}