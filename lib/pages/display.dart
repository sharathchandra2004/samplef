import 'package:flutter/material.dart';

class Mongodb extends StatefulWidget{
  Mongodb ({Key? key}) : super(key:key);

  @override
  _MongodbState createState() => _MongodbState(); 

}

class _MongodbState extends State<Mongodb>{
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Hello World")
          ],
       )
      ),
    );
  }
  

}