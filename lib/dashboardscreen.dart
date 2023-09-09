import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travolence/homescreen.dart';
import 'package:travolence/profilescreen.dart';

class dashboardscreen extends StatefulWidget{
  @override
  State<dashboardscreen> createState()=>dashboardscreenstate();
}
class dashboardscreenstate extends State<dashboardscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.withOpacity(.7),
        title: const Center(child: Text(
          "   T r A v O l E n C e", style: TextStyle(color: Colors.black),)),
        actions:[PopupMenuButton(itemBuilder: (context){
          return [
          const PopupMenuItem<int>(
          value: 1,
          child: Text("My Profile"),
         ),
            const PopupMenuItem<int>(
            value: 2,
            child: Text("Settings"),
           ),
         const PopupMenuItem<int>(
         value: 3,
         child: Text("Log out"),
              ),
              ];
             },
          onSelected: (value){
          if(value==1)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profilescreen(),));//if else statements could be used later#######
           }
          if(value==3)
            {
              FirebaseAuth.instance.signOut();
              Navigator.popUntil(context,(route)=>route.isFirst);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homescreen(),));
            }
          },
           )
        ]
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 1,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                width: 350,
               height: 200,
               decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h1.webp"))),
               child: const Padding(
                 padding: EdgeInsets.only(right: 10,top: 170),
                 child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
               ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h2.webp"))),
              child: const Padding(
                padding: EdgeInsets.only(right: 10,top: 170),
                child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h3.webp"))),
              child: const Padding(
                padding: EdgeInsets.only(right: 10,top: 170),
                child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h4.webp"))),
              child: const Padding(
                padding: EdgeInsets.only(right: 10,top: 170),
                child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h5.webp"))),
              child: const Padding(
                padding: EdgeInsets.only(right: 10,top: 170),
                child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/h6.webp"))),
              child: const Padding(
                padding: EdgeInsets.only(right: 10,top: 170),
                child: Text("Hotel Name , Address , +01 253535",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(400, 50)
              ),
              child:const Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 3,
              width: 400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    );
  }}