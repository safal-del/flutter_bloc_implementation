
import 'package:bloc_flutter/products/Products_model/product_model.dart';
import 'package:flutter/rendering.dart';

abstract class ProductInitialState{

}

class ProductLoadingState extends ProductInitialState{
  
}
class ProductSuccessfulState extends ProductInitialState{
  List<Product> products;
  ProductSuccessfulState(this.products);

  // void showList(){
      
  // }
  

}
class ProductErrorState extends ProductInitialState{

}