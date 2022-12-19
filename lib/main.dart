import 'package:bloc_flutter/bloc/app_state.dart';
import 'package:bloc_flutter/bloc/bloc_state.dart';
import 'package:bloc_flutter/products/product_api/product_api.dart';
import 'package:bloc_flutter/products/product_bloc/product_bloc.dart';
import 'package:bloc_flutter/ui/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
  MyApp().checkData();
   
}

class MyApp extends StatelessWidget {


  void checkData() async{
    var data=  ProductsApi().getApiOfProduct();
    print(data);

 
  }
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CheckApiBloc()),
        BlocProvider(create: (_)=>ProductBloc()),

      ],
     
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const Homepage(),
      ),
    );
  }
}

