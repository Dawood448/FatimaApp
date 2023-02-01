import 'package:fatimaapp/Model%20Classes/Hair%20Cut%20Cat%20Model%20class.dart';
import 'package:fatimaapp/Screens/Lux%20Barber%20Complete%20Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class HairCutSlider extends StatefulWidget {


  const HairCutSlider({Key? key}) : super(key: key);

  @override
  State<HairCutSlider> createState() => _HairCutSliderState();
}

class _HairCutSliderState extends State<HairCutSlider> {

  List <hairCutModel> hairList=[
    hairCutModel(image: "assets/hair1.jpg",name:"Lux Barbar" ,price:"Proin diam"),
    hairCutModel(image: "assets/hair 2.jpg",name:"West Saloons" ,price:"Pharetra arcu "),
    hairCutModel(image: "assets/hair 3.jpg",name:"Man's styles" ,price:"Metus vel "),
    hairCutModel(image: "assets/hair1.jpg",name:"Lux Barbar" ,price:"Proin diam"),
    hairCutModel(image: "assets/hair 2.jpg",name:"West Saloons" ,price:"Pharetra arcu "),
    hairCutModel(image: "assets/hair 3.jpg",name:"Man's styles" ,price:"Metus vel "),
    hairCutModel(image: "assets/hair1.jpg",name:"Lux Barbar" ,price:"Proin diam"),
    hairCutModel(image: "assets/hair 2.jpg",name:"West Saloons" ,price:"Pharetra arcu "),
    hairCutModel(image: "assets/hair 3.jpg",name:"Man's styles" ,price:"Metus vel "),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:   const textWidget(text: "Hair Cut Vendors", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 3,
        actions: [
          IconButton(
            onPressed: () {},
            icon:  const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
        leading: IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon:  const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
        ),
      ),
      body: ListView.builder(

          itemCount: hairList.length,
          itemBuilder: (ctx,index){
            hairCutModel obj=hairList[index];

            return Card(
              elevation: 5,
              margin:  const EdgeInsets.all(10),
              child: Padding(
                padding:  const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          //color: Colors.grey,
                          child: Image.asset(obj.image,fit: BoxFit.fill,),
                        ),
                        Padding(
                          padding:  const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              textWidget(text: obj.name, style: const TextStyle(color: Colors.black,fontSize: 22,),),
                              textWidget(text: obj.price, style: const TextStyle(color: Colors.grey,fontSize: 16),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return const LuxBarScreen();
                      }));
                    }, icon: const Icon (Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
