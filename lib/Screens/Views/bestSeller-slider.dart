import 'package:fatimaapp/Model%20Classes/Best%20seller%20Model%20class.dart';
import 'package:flutter/material.dart';
class bestSeller extends StatelessWidget {
  bestSeller({Key? key}) : super(key: key);
  List listOfSeller=[
    bestSellerModel(image: "assets/Mask_2x-removebg-preview.png"),
    bestSellerModel(image: "assets/Mask_2x-removebg-preview.png"),
    bestSellerModel(image: "assets/Mask_2x-removebg-preview.png"),
    bestSellerModel(image: "assets/Mask_2x-removebg-preview.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount:listOfSeller.length ,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          bestSellerModel object=listOfSeller[index];
          return Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset(object.image),
              ),
            ],
          );
        });
  }
}

