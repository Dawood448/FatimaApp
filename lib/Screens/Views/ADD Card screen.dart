import 'package:fatimaapp/Widgets/ADD%20CArd%20widget.dart';
import 'package:flutter/material.dart';
class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);
  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}
class _AddCardScreenState extends State<AddCardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_outlined),color: Colors.black,),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Add Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/visa_PNG18.png",scale: 7.5,),
              Image.asset("assets/master12.jpg",scale: 2.5,),
              Image.asset("assets/visa_PNG18.png",scale: 7.5),
              Image.asset("assets/master12.jpg",scale: 2.5,),
            ],
          ),
          InkWell(
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [Colors.pink,Colors.orange],)
              ),
              child: const Center(child: Text("Scan Credit Card",style: TextStyle(fontSize: 17,color: Colors.white),)),
            ),
            onTap: (){},
          ),
          MyCard("Name on Card","your name",),
          MyCard("Card Number", "4222 4222 4222 4222"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyCardOne("Expiry date","10 / 22"),
              MyCardOne("Security code", "447"),
            ],
          ),
          MyCard("ZIP/Postal code", "99917"),
          MyCard("Nick Name", "choose nick name for the card"),
          InkWell(
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient:  LinearGradient(colors: [Colors.pink,Colors.orange],)
              ),
              child: const Center(child: Text("ADD CARD",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
            onTap: (){Navigator.of(context).pop();},
          ),
        ],
      ),
    );
  }
}
