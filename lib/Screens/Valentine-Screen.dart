import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Screens/Views/Hair%20Cut%20Horizontal%20Slider.dart';
import 'package:fatimaapp/Screens/Views/Product%20Cat%20Horizontal%20Slider%20Screen.dart';
import 'package:fatimaapp/Screens/Views/Round%20with%20Flower.dart';
import 'package:fatimaapp/Screens/Views/Service%20Cat%20Horizontal%20slider.dart';
import 'package:fatimaapp/Screens/Views/Service%20Catagories%20Slider.dart';
import 'package:fatimaapp/Screens/Views/bestSeller-slider.dart';
import 'package:fatimaapp/Screens/Views/product%20catagory%20slider.dart';
import 'package:fatimaapp/Widgets/Row%20widget%20for%20view%20all.dart';
import 'package:flutter/material.dart';
class ValenScreen extends StatelessWidget {
  const ValenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return LandScreen(); }));}, icon: Icon(Icons.home)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag),),
        ],
      ),
      body: ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        children: [
          const RoundFlower(),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 viewAllWidget(texA: "Products ", texB: "Categories", textButton: TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return ProHorizontalScreen();
                   }));
                 }, child:  const Text("View all")),),
                 Container(
                   height: MediaQuery.of(context).size.height*0.23,
                   width: MediaQuery.of(context).size.width,
                   //color: Colors.black12,
                   child: ProductCatagoriesScreen(),
                 ),
                 viewAllWidget(texA: "Service  ", texB: "Categories", textButton: TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                     return SerHorizontalScreen();
                   }));
                 }, child:  const Text("View all")),),
                 Container(
                   height: MediaQuery.of(context).size.height*0.23,
                   width: MediaQuery.of(context).size.width,
                   //color: Colors.black12,
                   child: serviceCatogriesSlider(),
                 ),
                 viewAllWidget(texA: "Best ", texB: "Sellers", textButton: TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                     return const HairCutSlider();
                   }));
                 }, child:  const Text("View all"),),),
                 Container(
                   height: MediaQuery.of(context).size.height*0.23,
                   width: MediaQuery.of(context).size.width,
                   //color: Colors.black12,
                   child: bestSeller(),
                 ),
               ],
             ),
           ),
        ],
      ),
    );
  }
}
