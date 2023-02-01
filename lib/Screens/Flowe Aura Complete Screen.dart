import 'package:fatimaapp/Screens/Views/Blur%20Back%20for%20Flower%20Aura.dart';
import 'package:fatimaapp/Widgets/Divider%20widget.dart';
import 'package:fatimaapp/Widgets/Grid%20View%20widget.dart';
import 'package:flutter/material.dart';
class FlowerAuraScreen extends StatefulWidget {
  const FlowerAuraScreen({Key? key}) : super(key: key);
  @override
  State<FlowerAuraScreen> createState() => _FlowerAuraScreenState();
}
class _FlowerAuraScreenState extends State<FlowerAuraScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,),),
        centerTitle: true,
        title: const Text("Flower Aura",style: TextStyle(fontSize: 20,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
      body: Column(
        children: const[
          BlurStack(text: "Flower Aura"),
          SizedBox(height: 10,),
          divwidget(tex: "Products"),
          SizedBox(height: 10,),
          Expanded(
              child: griwid()),
        ],
      ),
    );
  }
}
