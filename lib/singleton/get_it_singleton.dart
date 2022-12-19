
import 'package:bloc_flutter/products/product_api/product_api.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;


void setup(){
  getIt.registerLazySingleton(() => ProductsApi());
}
