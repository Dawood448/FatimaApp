import 'package:fatimaapp/Model%20Classes/Product%20Cat%20Model%20Class.dart';
import 'package:fatimaapp/Model%20Classes/Service%20Cat%20Model%20Class.dart';
import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Screens/Valentine-Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class SerHorizontalScreen extends StatefulWidget {
  const SerHorizontalScreen({Key? key}) : super(key: key);

  @override
  State<SerHorizontalScreen> createState() => _SerHorizontalScreenState();
}

class _SerHorizontalScreenState extends State<SerHorizontalScreen> {

  List <ServiceCatogaries> serList=[
    ServiceCatogaries(image: "assets/colors.png",name:"Nail Paint Art" ,price:"150 Items"),
    ServiceCatogaries(image: "assets/nail.png",name:"Hina Art" ,price:"74 Items"),
    ServiceCatogaries(image: "assets/Short-Hairstyles-for-Girls-29.jpg",name:"Hair Cut" ,price:"53 Items"),
    ServiceCatogaries(image: "assets/makeup.png",name:"Nail Paint Art" ,price:"150 Items"),
    ServiceCatogaries(image: "assets/nail.png",name:"Hina Art" ,price:"74 Items"),
    ServiceCatogaries(image: "assets/Short-Hairstyles-for-Girls-29.jpg",name:"Hair Cut" ,price:"53 Items"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:   const textWidget(text: "Service Categories", style: TextStyle(color: Colors.black)),
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

          itemCount: serList.length,
          itemBuilder: (ctx,index){
            ServiceCatogaries obj=serList[index];

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
                          padding:  const EdgeInsets.only(left: 8.0),
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
                    IconButton(onPressed: (){}, icon: const Icon (Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
