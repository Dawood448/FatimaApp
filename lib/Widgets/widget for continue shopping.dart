import 'package:flutter/material.dart';
class kroundWid extends StatelessWidget {
  final double ht;
  final double wd;

  const kroundWid({Key? key,
    required this.ht,
    required this.wd,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ht,
        width: wd,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [Colors.pink,Colors.orange],
          ),
        ),
        child:const Icon(Icons.check,color: Colors.white,size: 80,)
    );
  }
}