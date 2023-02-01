import 'package:fatimaapp/Model%20Classes/Product%20Cat%20Model%20Class.dart';
import 'package:flutter/material.dart';
class ProductCatagoriesScreen extends StatelessWidget {
   ProductCatagoriesScreen({Key? key}) : super(key: key);
  List Product_Catagories_List=
  [
    ProductcatagoriesModel(image: "assets/nail.png",name: "Flower",price: "200 items"),
  ProductcatagoriesModel(image: "assets/nail.png",name: "Flower",price: "200 items"),
  ProductcatagoriesModel(image: "assets/nail.png",name: "Flower",price: "200 items"),
  ProductcatagoriesModel(image: "assets/nail.png",name: "Flower",price: "200 items"),
  ProductcatagoriesModel(image: "assets/nail.png",name: "Flower",price: "200 items"),
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: Product_Catagories_List.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          ProductcatagoriesModel obj=Product_Catagories_List[index];
          return Column(
            children: [
              Container(
                height: 100,
                width: 130,
                child: Image.asset(obj.image,width: 200,),
              ),
              Text(obj.name,style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),),
              Text(obj.price,style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),),
            ],
          );
        });
  }
}
