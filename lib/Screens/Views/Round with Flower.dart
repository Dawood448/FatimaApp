import 'package:flutter/material.dart';
class RoundFlower extends StatelessWidget {
  const RoundFlower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.25,
          decoration:  const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(300, 160),bottomRight: Radius.elliptical(300, 160)),
          ),
        ),
        Positioned(
            right: -90,
            bottom: -90,
            child: Container(
                width: 320,
                height: 320,
                child: Image.asset("assets/flower bookey@2x.png",),),),
        Positioned(
          top: 10,
          left: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Valentine Offer",style: TextStyle(color: Colors.white,fontSize: 18),),
              const SizedBox(height: 15,),
              Container(
                width: 160,
                height: 60,
                child: const Text("20% of in all of Our Products",maxLines: 2,style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              // SizedBox(height: 15,),
              Container(
                  height: 37,
                  width: 90,
                  decoration:  BoxDecoration(
                      border: Border.all(color: Colors.white)
                  ),
                  child: TextButton(onPressed: (){}, child: const Text("Shop Now",style: TextStyle(
                    color: Colors.white,
                  ),),))
            ],
          ),
        ),
      ],
    );
  }
}
