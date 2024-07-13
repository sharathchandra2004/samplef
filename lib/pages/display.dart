import 'package:flutter/material.dart';
import 'package:samplef/MongoDbModel.dart';
import 'package:samplef/pages/mongodb.dart';

class Mongodb extends StatefulWidget{
  const Mongodb ({Key? key}): super(key:key);

  @override
  _MongodbState createState() => _MongodbState(); 

}

class _MongodbState extends State<Mongodb>{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder(
            future: MongoDatabase.getData() ,
            builder:(context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else{
              if(snapshot.hasData){
                var totalData = snapshot.data.length;
                print("totalData"+ totalData.toString());
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context,index){
                    return displayCard(
                      MongoDbModel.fromJson(snapshot.data[index]));
                });
          
              }else{
                return const Center(
                  child:Text("No Data Available") ,
                  );
              }
            }
          
          }),
        )
      )
    );
  }

  Widget displayCard(MongoDbModel data){
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
          children: [
            Text("${data.id}"),
           const SizedBox(height: 5,),
            Text("${data.day}"),
           const SizedBox(height: 5,),
            Text("${data.the900945}"),
           const SizedBox(height: 5,),
            Text("${data.name}"),
          ],
                ),
        ),);
      }
  }