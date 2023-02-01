import 'package:fatimaapp/Model%20Classes/Lux%20Brbar%20Model%20Class.dart';
import 'package:fatimaapp/Screens/Views/detail%20of%20Lux%20barbar.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  MyListViewWidget({Key? key}) : super(key: key);
  @override
  List<barLux> tipsList = [
    barLux(image: "assets/Short-Hairstyles-for-Girls-29.jpg", name: "Hair Color Treatments", price: "AED 162"),
    barLux(image: "assets/hair1.jpg", name: "Cut SetUp", price: "AED 16"),
    barLux(image: "assets/hair 2.jpg", name: "Short length", price: "AED 160"),
    barLux(image: "assets/hair 3.jpg", name: "Hair Color", price: "AED 162"),
    barLux(image: "assets/Short-Hairstyles-for-Girls-29.jpg", name: "Cut SetUp", price: "AED 16"),
    barLux(image: "assets/hair 3.jpg", name: "Short length", price: "AED 160"),
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: tipsList.length,
        itemBuilder: (BuildContext context, int index) {
          barLux object = tipsList[index];
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        //color: Colors.grey,
                        child: Image.asset(
                          object.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textWidget(
                              text: object.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            textWidget(
                              text: object.price,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                          return const LuxbarbarDetailScreen();
                        }));
                      },
                      icon: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          );
        });
  }
}
