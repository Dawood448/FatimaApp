import 'package:fatimaapp/Widgets/Gradient%20Button.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/carusel%20slider.dart';
import 'package:flutter/material.dart';
class detailScreen extends StatelessWidget {
  const detailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back,color: Colors.black,),)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CarSliScreen(),
          const SizedBox(height: 10,),
          const Divider(color: Colors.black, height: 2,),
          const SizedBox(height: 10,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,color: Colors.red,size: 25,),),
          const textWidget(text: "Flower Aura", style: TextStyle(color: Colors.grey),),
          const textWidget(text: "Felicity Expressions", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const textWidget(text: "Multi Shade Shine",style: TextStyle()),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: const Text("Black hair is b far the most common natural hair in the world. In fact, around 75 to 85 percent of the people  in the world have some shade of black hair."
                "Colors like butterscotch, light auburn and golden brown, or ash brown for those with a cool skin tone, ",textAlign: TextAlign.justify,maxLines: 5,
              style: TextStyle(fontSize: 15,),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("AED 166",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
              InkWell(child: const Card(elevation: 5,child: GradButton(tex: "Add to Cart")),onTap: (){},),
            ],
          ),

        ],
      ),
    );
  }
}
