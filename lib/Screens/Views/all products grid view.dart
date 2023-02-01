import 'package:fatimaapp/Screens/FiltersScreen.dart';
import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Screens/Views/detail%20of%20Grid%20View.dart';
import 'package:fatimaapp/Widgets/Grid%20View%20widget.dart';
import 'package:flutter/material.dart';

class proGridScreen extends StatefulWidget {
  const proGridScreen({Key? key}) : super(key: key);

  @override
  State<proGridScreen> createState() => _proGridScreenState();
}

class _proGridScreenState extends State<proGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 3,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return const filterScreen();
                }));
              },
              child: const Text(
                "Filters",
                style: TextStyle(color: Colors.grey),
              )),
        ],
        leading: IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
        ),
        title: const Text(
          "All Products",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children:  [
          Expanded(
              child: InkWell(child: const griwid(),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return const detailScreen();
                }));
              }, ),),
        ],
      ),
    );
  }
}
