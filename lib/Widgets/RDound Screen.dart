import 'package:flutter/material.dart';
class RoundBarScreen extends StatefulWidget {
  const RoundBarScreen({Key? key}) : super(key: key);
  @override
  State<RoundBarScreen> createState() => _RoundBarScreenState();
}
class _RoundBarScreenState extends State<RoundBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(300, 100),bottomRight: Radius.elliptical(300, 100)),
            ),
          ),
          Positioned(
            top: 35,
            right: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0,right: 30),
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search",
                    prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
