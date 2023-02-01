import 'package:fatimaapp/Widgets/Gradient%20Button.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (ctx,index){
        return Card(
          color: Colors.greenAccent,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/colors.png",scale: 1.5,)),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                   textWidget(text: "Nail Paint", style: TextStyle(color: Colors.black,fontSize: 20)),
                    textWidget(text: "Nail Paint", style: TextStyle(color: Colors.grey,fontSize: 18)),
                    const SizedBox(height: 8,),
                    newGraButton(hg: 40,wd: 110,tex: "Order Again",),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
