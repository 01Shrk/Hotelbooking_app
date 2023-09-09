import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:travolence/dashboardscreen.dart';
import 'package:travolence/signupscreen.dart';

class loginscreen extends StatefulWidget{
  @override
  State<loginscreen> createState()=>loginscreenstate();
}
class loginscreenstate extends State<loginscreen>{
  @override
  Widget build(BuildContext context) {
       TextEditingController emailcontroller = TextEditingController();
       TextEditingController passwordcontroller = TextEditingController();

       void login()async{
         String email  = emailcontroller.text.trim();
         String password  = passwordcontroller.text.trim();
          if(email== "" || password == "")
            {
              log("please enter email and password");
            }
          else
            {
              try {
                UserCredential usercredential = await
                FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
                if(usercredential.user!=null)
                  {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> dashboardscreen()));
                  }
              }on FirebaseAuthException catch(ex){
                log(ex.code.toString());
              }
            }
       }
                return Scaffold(
                  backgroundColor: Colors.greenAccent.shade100,
                  appBar: AppBar(backgroundColor: Colors.greenAccent.withOpacity(.7),title: const Center(child: Text("Login",style: TextStyle(color: Colors.black),)),),
                body:  Column(
                  children: [
                     Padding(
                      padding: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 30),
                      child: TextField(
                        controller: emailcontroller,
                        decoration: InputDecoration(labelText: 'E-mail'),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 20),
                      child: TextField(
                        obscureText: true,
                        controller: passwordcontroller,
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: OutlinedButton(onPressed: (){
                       login();
                      },
                        child:const Text("Login",style: TextStyle(color: Colors.black,fontSize: 25),),
                        style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            minimumSize: const Size(100, 50)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: OutlinedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signupscreen(),));
                      },
                        child:const Text("Create New",style: TextStyle(color: Colors.black,fontSize: 25),),
                        style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            minimumSize: const Size(100, 50)
                        ),
                      ),
                    ),
                  ],
                ),
                );
  }

}