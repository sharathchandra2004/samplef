import 'package:flutter/material.dart';
import 'package:samplef/pages/homepage.dart';
import 'package:samplef/pages/loginpage.dart';
import 'package:samplef/pages/mainpage.dart';
void main(){
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      routes:{
        '/loginpage': (context) =>  Loginpage() ,
        '/mainpage' : (context) => const  Mainpage(),
      }
    );
  }
}
