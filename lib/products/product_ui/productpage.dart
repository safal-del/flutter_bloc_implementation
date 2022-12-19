
import 'package:bloc_flutter/products/Products_model/product_model.dart';
import 'package:bloc_flutter/products/product_bloc/product_bloc.dart';
import 'package:bloc_flutter/products/product_page/product_event.dart';
import 'package:bloc_flutter/products/product_page/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {




   

  ProductBloc? productBloc;
  
  @override
  void initState() {

     
    // TODO: implement initState
    super.initState();
    productBloc = BlocProvider.of<ProductBloc>(context);
    
    productBloc!.add(FetchProductEvent());
    

     


   

    
    


     


     
    
   
    
  
     

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("products"),
        
      ),
      body: BlocBuilder<ProductBloc,ProductInitialState>(builder: ((context, state) {

         if(state is ProductLoadingState){
          return const CircularProgressIndicator();
         }
         
        else if(state is ProductSuccessfulState){
            return ListView.builder( itemCount: state.products.length  , itemBuilder:((context, index) {
               
               Product product = state.products[index];
               print(product.price.toString());
               
                return ListTile(title: Text(product.title),);
            }) );
           
    
         }
        else if(state is ProductErrorState){
            return Text("error occured");

         }
          
         return  Text("hehe");
          
      
      }),),
    );
  }
}