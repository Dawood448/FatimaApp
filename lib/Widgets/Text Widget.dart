import 'package:flutter/material.dart';
class textWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  const textWidget({Key? key,
    required this.text,
    required this.style,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style:style );
  }
}
