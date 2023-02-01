import 'package:fatimaapp/Widgets/RichText%20widget.dart';
import 'package:flutter/material.dart';
class viewAllWidget extends StatelessWidget {
  final texA;
  final texB;
  final TextButton textButton;

   viewAllWidget({Key? key,

   required this.texA,
     required this.texB,
     required this.textButton,


   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Krich(tex : texA ,text: texB),
        textButton,
      ],
    );
  }
}
