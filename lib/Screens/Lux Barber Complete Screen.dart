import 'package:fatimaapp/Screens/Views/Blur%20Back%20for%20Flower%20Aura.dart';
import 'package:fatimaapp/Screens/Views/Lux%20Slider%20Screen.dart';
import 'package:fatimaapp/Widgets/Divider%20widget.dart';
import 'package:flutter/material.dart';

class LuxBarScreen extends StatelessWidget {
  const LuxBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "lux Bar",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
          icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart_rounded),
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const BlurStack(text: "Lux Barbar"),
          const SizedBox(height: 10,),
          const divwidget(tex: "Services"),
          const SizedBox(height: 10,),
           MyListViewWidget(),
        ],
      ),
    );
  }
}
