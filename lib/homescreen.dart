import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:travolence/signupscreen.dart';

class homescreen extends StatefulWidget{
  @override
  State<homescreen> createState() => homescreenstate();
}
class homescreenstate extends State<homescreen>{
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;
         return Scaffold(
           backgroundColor: Colors.greenAccent.shade100,
           appBar: AppBar(backgroundColor: Colors.greenAccent.withOpacity(.7),
               title:const Center(child: Text("T r A v O l E n C e",style: TextStyle(fontSize: 25,color: Colors.black),))),
           body:
              Column(
                children: [

                  CarouselSlider(
                      items: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 500,
                          width: 300,
                        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/h8.webp"),fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 500,
                          width: 300,
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/h5.webp"),fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 500,
                          width: 300,
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/h7.webp"),fit: BoxFit.cover)),
                        ),
                      ],
                      options:CarouselOptions(
                        height: 600,
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                        autoPlayCurve:Curves.fastOutSlowIn,
                      ) ,
                  ),
                  
                   
                   Padding(
                     padding: const EdgeInsets.all(10),
                     child: OutlinedButton(
                           onPressed: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signupscreen(),));
                           },
                           style: OutlinedButton.styleFrom(minimumSize: const Size(200,70),backgroundColor: Colors.greenAccent.withOpacity(.7),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),),
                           child: const Text("Get Started",style: TextStyle(fontSize: 25,color: Colors.black),),
                        ),
                   ),
                ],
              )
         );
  }
}