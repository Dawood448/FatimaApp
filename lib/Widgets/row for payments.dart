import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class KrowWid extends StatelessWidget {
  final te;
  final tx;
  const KrowWid({Key? key,required this.te,required this.tx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textWidget(text: te, style: TextStyle(fontSize: 18,color: Colors.grey),),
        textWidget(text: tx, style: TextStyle(fontSize: 18,color: Colors.grey),),
      ],
    );
  }
}