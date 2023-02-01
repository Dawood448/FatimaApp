import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class colWid extends StatelessWidget {
  final text;
  final tex;
  const colWid({Key? key,required this.text,required this.tex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text: text, style: TextStyle(),),
          textWidget(text: tex, style: TextStyle(),),
        ],
      ),
    );
  }
}



