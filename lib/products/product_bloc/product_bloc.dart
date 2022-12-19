

import 'package:bloc_flutter/bloc/app_state.dart';
import 'package:bloc_flutter/products/product_api/product_api.dart';
import 'package:bloc_flutter/products/product_page/product_event.dart';
import 'package:bloc_flutter/products/product_page/product_state.dart';
import 'package:bloc_flutter/singleton/get_it_singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductInitialState>{

  ProductBloc():super(ProductLoadingState()){
     on<ProductEvent>((event, emit) async{
        
       var results = await getIt.get<ProductsApi>().getApiOfProduct();

        print(results);

       
         
          emit(ProductLoadingState());
          emit(ProductSuccessfulState(results));
          emit(ProductErrorState());
     });

  }
  
}