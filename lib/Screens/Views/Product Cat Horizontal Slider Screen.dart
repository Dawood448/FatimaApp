import 'package:fatimaapp/Model%20Classes/Product%20Cat%20Model%20Class.dart';
import 'package:fatimaapp/Screens/Valentine-Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class ProHorizontalScreen extends StatefulWidget {
    const ProHorizontalScreen({Key? key}) : super(key: key);

  @override
  State<ProHorizontalScreen> createState() => _ProHorizontalScreenState();
}

class _ProHorizontalScreenState extends State<ProHorizontalScreen> {

  List <ProductcatagoriesModel> proList=[
    ProductcatagoriesModel(image: "assets/makeup.png",name:"Nail Paint" ,price:"150 Items"),
    ProductcatagoriesModel(image: "assets/nail.png",name:"Flowers" ,price:"74 Items"),
    ProductcatagoriesModel(image: "assets/colors.png",name:"Gift Packages" ,price:"53 Items"),
    ProductcatagoriesModel(image: "assets/makeup.png",name:"Nail Paint" ,price:"150 Items"),
    ProductcatagoriesModel(image: "assets/nail.png",name:"Flowers" ,price:"74 Items"),
    ProductcatagoriesModel(image: "assets/colors.png",name:"Gift Packages" ,price:"53 Items"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:   const textWidget(text: "Product Categories", style: TextStyle(color: Colors.black)),
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

          itemCount: proList.length,
          itemBuilder: (ctx,index){
            ProductcatagoriesModel obj=proList[index];

        return Card(
          elevation: 5,
          margin:  const EdgeInsets.all(10),
          child: Padding(
            padding:  const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
