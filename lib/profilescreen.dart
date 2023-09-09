import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget{
  @override
  State<profilescreen> createState()=>profilescreenstate();
}
class profilescreenstate extends State<profilescreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(backgroundColor: Colors.greenAccent.withOpacity(.7),
        title: const Center(child: Text("Profile             ",style: TextStyle(color: Colors.black),)),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Icon(Icons.account_circle_rounded,size: 160,color: Colors.black)),
            const Padding(
              padding: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 30),
              child: TextField(
                decoration: InputDecoration(labelText: '  YOUR NAME TO BE DISPLAYED'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 30),
              child: TextField(
                decoration: InputDecoration(labelText: '   YOUR EMAIL TO BE DISPLAYED'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 30),
              child: TextField(
                decoration: InputDecoration(labelText: '   YOUR PAYMENT METHOD TO BE DISPLAYED'),
              ),
            ),
          ],
        ),
      ),
    );
  }}