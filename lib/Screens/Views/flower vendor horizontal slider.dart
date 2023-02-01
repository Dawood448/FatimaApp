import 'package:fatimaapp/Model%20Classes/Product%20Cat%20Model%20Class.dart';
import 'package:fatimaapp/Model%20Classes/flower%20Cat%20Model%20Class.dart';
import 'package:fatimaapp/Screens/Valentine-Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class FlowerHorizontalScreen extends StatefulWidget {
  const FlowerHorizontalScreen({Key? key}) : super(key: key);

  @override
  State<FlowerHorizontalScreen> createState() => _FlowerHorizontalScreenState();
}

class _FlowerHorizontalScreenState extends State<FlowerHorizontalScreen> {

  List <FlowercatagoriesModel> flowList=[
    FlowercatagoriesModel(image: "assets/flo.jpeg",name:"Flower Aura" ,price:"150 Items"),
    FlowercatagoriesModel(image: "assets/glass flo.jpeg",name:"National Flowers" ,price:"74 Items"),
    FlowercatagoriesModel(image: "assets/bunch.jpeg",name:"Ny Flower" ,price:"53 Items"),
    FlowercatagoriesModel(image: "assets/gulab.jpg",name:"Flower Aura" ,price:"150 Items"),
    FlowercatagoriesModel(image: "assets/flo.jpeg",name:"Flowers" ,price:"74 Items"),
    FlowercatagoriesModel(image: "assets/bunch.jpeg",name:"Gift Packages" ,price:"53 Items"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:   const textWidget(text: "Flower Categories", style: TextStyle(color: Colors.black)),
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
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
            return const ValenScreen();
          }));},
          icon:  const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
        ),
      ),
      body: ListView.builder(

          itemCount: flowList.length,
          itemBuilder: (ctx,index){
            FlowercatagoriesModel obj=flowList[index];

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
                    IconButton(onPressed: (){}, icon: const Icon (Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
