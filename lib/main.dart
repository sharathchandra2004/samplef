import 'package:flutter/material.dart';
import 'package:samplef/components/ttable.dart';
import 'package:samplef/pages/homepage.dart';
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
        '/mainpage' : (context) => const  Mainpage(), 
        '/table':(context) => const TTable(),
        }
    );
  }
}
