import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travolence/dashboardscreen.dart';
import 'package:travolence/splashscreen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
            return MaterialApp(
              color: Colors.greenAccent,
              title: 'Travolence',
              theme: ThemeData(primarySwatch: Colors.blue,),
              debugShowCheckedModeBanner: false,
              home: (FirebaseAuth.instance.currentUser != null) ? dashboardscreen() : splashscreen(),
            );
  }
}