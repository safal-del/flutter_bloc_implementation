


class Product{
   int id;
   String title;
   double price;
   String description;
   String category;
   String image;
   Map<String,dynamic> rating;


    Product({required this.id, required this.title, required this.price, required this.description, required, required this.category, required this.image, required this.rating});

   factory Product.fromMap(Map<String, dynamic> json){
    return Product(id: json["id"], title: json["title"], price: json["price"], description: json["description"], category: json["category"], image: json["image"], rating: json["rating"]);
   }



 

} 