import 'package:fatimaapp/Screens/Favourite%20Screen.dart';
import 'package:flutter/material.dart';
import 'package:fatimaapp/Model%20Classes/Flower%20Aura%20Model%20Class.dart';

class griwid extends StatelessWidget {
  const griwid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<FlowerModelClass> flowList=[
      FlowerModelClass(image: "assets/bokhay.png",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
      FlowerModelClass(image: "assets/bunch.jpeg",name: "Bloom In ",nameA: "Love",price: "AED 166"),
      FlowerModelClass(image: "assets/flo.jpeg",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
      FlowerModelClass(image: "assets/bokhay.png",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
      FlowerModelClass(image: "assets/bunch.jpeg",name: "Bloom In ",nameA: "Love",price: "AED 166"),
      FlowerModelClass(image: "assets/flo.jpeg",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
      FlowerModelClass(image: "assets/bokhay.png",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
      FlowerModelClass(image: "assets/bunch.jpeg",name: "Bloom In ",nameA: "Love",price: "AED 166"),
      FlowerModelClass(image: "assets/flo.jpeg",name: "Felicity ",nameA: "Expressions",price: "AED 166"),
    ];

    return Padding(
      padding: const EdgeInsets.all( 10.0),
      child: GridView.builder(
        itemCount: flowList.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          FlowerModelClass obj=flowList[index];
          return Container(
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 220,
                          width: 156,
                          child: Image.asset(
                            obj.image,
                            fit: BoxFit.fill,
                          ),),
                      ),
                      Positioned(
                        right: 10,
                        child: IconButton(
                            onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const FavScreen();}));},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Text.rich(
                    TextSpan(
                      text: obj.name,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: obj.nameA,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Text(obj.price),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
