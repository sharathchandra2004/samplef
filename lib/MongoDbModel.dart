import 'dart:convert';
import'package:mongo_dart/mongo_dart.dart';
MongoDbModel mongoDbModelFromJson(String str) => 
MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) =>json.encode(data.toJson());
class MongoDbModel {
    
    MongoDbModel({
        required this.id,
        required this.day,
        required this.the900945,
        required this.name,
    });
    ObjectId id;
    String day;
    String the900945;
    String name;

    factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
      id: json["_id"],
      day: json["day"], 
      the900945: json["9:00-9:45"], 
      name: json["name"]
      );
      Map<String, dynamic> toJson()=>{
          "_id": id,
          "day": day, 
          "9:00-9:45":the900945, 
          "name": name
        
      };
}
