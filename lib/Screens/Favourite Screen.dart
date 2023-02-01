import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class FavScreen extends StatelessWidget {
   const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: textWidget(text: "Favorite", style: TextStyle(
                color: Colors.black,
                fontSize: 30
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all( 10.0),
            child: GridView.builder(
              itemCount: 9,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 230,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 150,
                                child: Image.asset("assets/colors.png", fit: BoxFit.fill,),),
                              Positioned(
                                  right: -15,
                                  top: -15,
                                  child: IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.cancel,color: Colors.redAccent,),
                              )),
                            ],
                          ),
                        ),
                        const Text("Flower",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                        ),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
