import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/widget%20for%20continue%20shopping.dart';
import 'package:flutter/material.dart';
class Clickscreen extends StatelessWidget {
  const Clickscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
           onPressed: (){
             Navigator.of(context).pop();},
          icon: const Icon(Icons.close,color: Colors.black,),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const kroundWid(ht: 150, wd: 150),
          Column(
            children: [
              const textWidget(text: "AED 500", style: TextStyle(color: Colors.black,
                fontSize: 40,),),
              Container(
                height: 45,
                width: 180,
                //color: Colors.yellowAccent,
                child: const Text("   Your payment is complete thank you for shoppping",
                  style: TextStyle(color: Colors.grey,fontSize: 20),),
              ),
            ],
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child:  const Center(
                  child: Text("Continue Shopping",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),),
                ),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const LandScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
