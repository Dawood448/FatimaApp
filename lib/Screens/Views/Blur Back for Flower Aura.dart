import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
class BlurStack extends StatelessWidget {
  final String text;
  const BlurStack({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Blur(
          blur: 3,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/flow back.jpg"),fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 40,
          child:
          Column(
            children: [
              Image.asset("assets/logo aura.png",height: 80,),
               Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Positioned(
          right: 30,
          top: 30,
          child:
          Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.whatsapp_rounded,size: 30,),color: Colors.white,),
                  const Text("+971-000-2145-56",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.call,size: 30),color: Colors.white,),
                  const Text("+971-000-2145-56",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.directions,size: 30),color: Colors.white,),
                  const Text("+971-000-2145-56",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),

            ],
          ),),
      ],
    );
  }
}
