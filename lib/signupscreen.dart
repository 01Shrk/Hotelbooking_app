import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:travolence/loginscreen.dart';

class signupscreen extends StatefulWidget{
  @override
  State<signupscreen> createState()=> signupscreenstate();
}
class signupscreenstate extends State<signupscreen>{
  @override
  Widget build(BuildContext context) {
    TextEditingController  emailcontroller  = TextEditingController();
    TextEditingController passwordcontroller  = TextEditingController();
    TextEditingController confirmpasswordcontroller = TextEditingController();


      void signup()async{
      String email = emailcontroller.text.trim();
      String password = passwordcontroller.text.trim();
      String confirmpassword = confirmpasswordcontroller.text.trim();

      if(email == "" || password == "" || confirmpassword == "")
        {
          log("please enter your details first");
        }
      else if(password != confirmpassword)
        {
          log("passwords do not match");
        }
      else
        {
          try
          {
            UserCredential usercredential = await
                FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                log("account created succesfully");
                if(usercredential.user != null)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen(),));
                  }
          }on FirebaseAuthException catch(ex){
            log((ex.code.toString()));
          }
        }
    }
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
        return Scaffold(
          backgroundColor: Colors.greenAccent.shade100,
          appBar: AppBar(backgroundColor: Colors.greenAccent.withOpacity(.7),
            title: const Center(child: Text("Create Your Account",style: TextStyle(color: Colors.black),)),),
       body: Column(
         children: [
            Padding(
             padding: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 30),
             child: TextField(
               controller: emailcontroller,
                 decoration: InputDecoration(labelText: 'E-mail'),
             ),
           ),
            Padding(
             padding: EdgeInsets.only(top: 12,right: 10,left: 10,bottom: 20),
             child: TextField(
               controller: passwordcontroller,
               obscureText: true,
               decoration: InputDecoration(labelText: 'Password'),
             ),
           ),
           Padding(
             padding: EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 30),
             child: TextField(
               controller: confirmpasswordcontroller,
               obscureText: true,
               decoration: InputDecoration(labelText: 'Confirm Password'),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(19),
             child: OutlinedButton(onPressed: (){
              signup();
                 },
               child:const Text("Create Account",style: TextStyle(color: Colors.black,fontSize: 25),),
                 style: OutlinedButton.styleFrom(backgroundColor: Colors.greenAccent.withOpacity(.7),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  minimumSize: const Size(100, 50)
                 ),
             ),
           ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: const Text("Already have an account Log in ?",style: TextStyle(color: Colors.blue,fontSize: 17),),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginscreen(),));
              },
            )
         ],
       )

    );
  }
  
}