import 'package:flutter/material.dart';
class Krich extends StatelessWidget {
  final String tex;
  final String text;
   Krich({Key? key,required this.tex,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      TextSpan(
        text: tex,style:const  TextStyle(
        fontSize: 20,),
        children:<InlineSpan>[
          TextSpan(
            text: text,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

class Ktext extends StatelessWidget {
  final dynamic textA;
  final double size;
  const Ktext({Key? key,required this.textA,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textA,style: TextStyle(
      fontSize: size,
    ),);
  }
}
