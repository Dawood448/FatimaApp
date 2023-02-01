import 'package:flutter/material.dart';

class gridFlowerAura extends StatelessWidget {
  const gridFlowerAura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                    height: 220,
                    width: 165,
                    child: Image.asset(
                      "assets/boky.png",
                      fit: BoxFit.fill,
                    )),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                    onPressed: () {},
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
          const Text.rich(
            TextSpan(
              text: 'Product ',
              style: TextStyle(
                fontSize: 17,
              ),
              children: <InlineSpan>[
                TextSpan(
                  text: 'Catagories',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("AED 166"),
        ],
      ),
    );
  }
}
