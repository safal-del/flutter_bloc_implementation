

import 'package:bloc_flutter/bloc/app_event.dart';
import 'package:bloc_flutter/bloc/app_state.dart';
import 'package:bloc_flutter/bloc/bloc_state.dart';
import 'package:bloc_flutter/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //  UserModel? userss;
   CheckApiBloc? checking;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checking =  BlocProvider.of<CheckApiBloc>(context);
    checking!.add(FetchApiEvent());
     

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CheckApiBloc,Initialstate>(builder: ((context, state) {

         if(state is LoadinState){
          return CircularProgressIndicator();
         }
         
         if(state is SuccessfulState){
            return ListView.builder( itemCount: state.users.length  , itemBuilder:((context, index) {
               UserModel user = state.users[index];
               print(user);
                return ListTile(title: Text(user.email),);
            }) );
           
    
         }
         return CircularProgressIndicator();
          
      
      }),),
    );
  }
}