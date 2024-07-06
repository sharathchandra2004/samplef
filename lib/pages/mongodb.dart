import 'dart:developer';
// ignore: depend_on_referenced_packages
import 'package:mongo_dart/mongo_dart.dart';
import 'package:samplef/pages/constant.dart';

class MongoDatabase {
  // ignore: prefer_typing_uninitialized_variables
    static var db , userCollection;
    static connect() async{
      try{
         db =await Db.create(MONGO_CONN_URL);
      await db.open();
      inspect(db);
      userCollection = db.collection(USER_COLLECTION);
      print("Database connected successfully");
      }
      catch(e){
        print("error connecting to database:$e");
      }
    }
 }