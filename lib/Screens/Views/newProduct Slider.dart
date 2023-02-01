import 'package:fatimaapp/Model%20Classes/NewProduct%20Model%20Class.dart';
import 'package:flutter/material.dart';
class NewProduct extends StatelessWidget {
  NewProduct({Key? key}) : super(key: key);
  List listOfNewProduct=
  [
    NewProductScreen(image: "assets/Layer_0_2x-removebg-preview.png",nameA: "Creative Art",nameB: "Frame",description: "In order to put it, now let him flatter the laoreet, let the wise man pay the bed, and the employee sem tortor quis dui. Unless the employee is targeted by members of the soft team. I don't have any land, but I am a football player. But there is a great need to set the boat at rest. Until the eleifend, except for the tincidunt trucks, what kind of vehicles do I give, and the fringilla is the very ligula for me. A good way of life for me. Until the ugly pain, the ends are made to, it flatters not trigger.",price: "AED: 123"),
    NewProductScreen(image: "assets/Layer_0_2x-removebg-preview.png",nameA: "Creative Art",nameB: "Frame",description: "In order to put it, now let him flatter the laoreet, let the wise man pay the bed, and the employee sem tortor quis dui. Unless the employee is targeted by members of the soft team. I don't have any land, but I am a football player. But there is a great need to set the boat at rest. Until the eleifend, except for the tincidunt trucks, what kind of vehicles do I give, and the fringilla is the very ligula for me. A good way of life for me. Until the ugly pain, the ends are made to, it flatters not trigger.",price: "AED: 123"),
    NewProductScreen(image: "assets/Layer_0_2x-removebg-preview.png",nameA: "Creative Art",nameB: "Frame",description: "In order to put it, now let him flatter the laoreet, let the wise man pay the bed, and the employee sem tortor quis dui. Unless the employee is targeted by members of the soft team. I don't have any land, but I am a football player. But there is a great need to set the boat at rest. Until the eleifend, except for the tincidunt trucks, what kind of vehicles do I give, and the fringilla is the very ligula for me. A good way of life for me. Until the ugly pain, the ends are made to, it flatters not trigger.",price: "AED: 123"),
    NewProductScreen(image: "assets/Layer_0_2x-removebg-preview.png",nameA: "Creative Art",nameB: "Frame",description: "In order to put it, now let him flatter the laoreet, let the wise man pay the bed, and the employee sem tortor quis dui. Unless the employee is targeted by members of the soft team. I don't have any land, but I am a football player. But there is a great need to set the boat at rest. Until the eleifend, except for the tincidunt trucks, what kind of vehicles do I give, and the fringilla is the very ligula for me. A good way of life for me. Until the ugly pain, the ends are made to, it flatters not trigger.",price: "AED: 123"),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfNewProduct.length,
          itemBuilder: (context,index){
            NewProductScreen object=listOfNewProduct[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  //color: Colors.yellowAccent,
                  child: Image.asset(object.image),
                ),
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 20),
                  child: Container(
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text.rich(
                          TextSpan(
                            text:object.nameA,style: const TextStyle(
                            fontSize: 20,),
                            children:<InlineSpan>[
                              TextSpan(
                                text:object.nameB,style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 220,
                          child: Text(object.description,maxLines: 2,textAlign: TextAlign.justify,
                            style:   const TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),),
                        ),
                        Text(object.price,style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),),

                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
