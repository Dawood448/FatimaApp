import 'package:fatimaapp/Model%20Classes/Service%20Cat%20Model%20Class.dart';
import 'package:flutter/material.dart';
class serviceCatogriesSlider extends StatelessWidget {
  List <ServiceCatogaries> horizontalList=
  [
    ServiceCatogaries(image: "assets/nail.png", name: "MakeUp Artist", price: "1500 Artist"),
    ServiceCatogaries(image: "assets/colors.png", name: "MakeUp Artist", price: "1500 Artist"),
    ServiceCatogaries(image: "assets/makeup.png", name: "MakeUp Artist", price: "1500 Artist"),
    ServiceCatogaries(image: "assets/nail.png", name: "MakeUp Artist", price: "1500 Artist"),
    ServiceCatogaries(image: "assets/colors.png", name: "MakeUp Artist", price: "1500 Artist"),
    ServiceCatogaries(image: "assets/makeup.png", name: "MakeUp Artist", price: "1500 Artist"),
  ];

  serviceCatogriesSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: horizontalList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
        {
          ServiceCatogaries detail=horizontalList[index];
          return Column(
            children: [
              Container(
                height: 100,
                width: 130,
                child: Image.asset(detail.image,width: 200,),
              ),
              Text(detail.name,style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),),
              Text(detail.price,style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),),
            ],
          );
        }) ;
  }
}
