
import 'dart:convert';
import 'dart:math';
import 'package:bloc_flutter/models/usermodel.dart';
 import "package:http/http.dart";
import 'package:dio/dio.dart';


class UserRepositary{
  final dio =Dio();
  String endPoint = "https://reqres.in/api/users?page=2";
   
  Future<List<UserModel>>  getApi() async{
      var response = await dio.get(endPoint);
      try{
        var dataValue = response.data;
       if(response.statusCode == 200){
         print(dataValue["data"]);
          var dkdkd = dataValue["data"];
           print(dkdkd);
        final List<UserModel> result = List.generate( dataValue["data"].length, (index) => UserModel.fromJson(dataValue["data"][index])).toList(); 
        return result;
       }
       else{
          throw Exception(response.statusMessage);
        
       }
      } catch(error){
        throw Exception(response.statusMessage);
      }
    }
}