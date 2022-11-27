
import 'dart:convert';
import 'package:bloc_flutter/models/usermodel.dart';
import "package:http/http.dart";


class UserRepositary{
  String endPoint = "https://reqres.in/api/users?page=2";
   
  Future<List<UserModel>>  getApi() async{
      Response response = await get(Uri.parse(endPoint));
      try{
        var dataValue = jsonDecode(response.body);
       if(response.statusCode == 200){
        final List<UserModel> result = List.generate( dataValue["data"].length, (index) => UserModel.fromJson(dataValue["data"][index])).toList(); 
        return result;
       }
       else{
        throw Exception(response.reasonPhrase);
       }
      } catch(error){
        throw Exception(response.reasonPhrase);
      }
    }
}