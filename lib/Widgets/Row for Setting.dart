import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class setRow extends StatelessWidget {
  final String tex;
  final IconButton iconButton;
  const setRow({Key? key,required this.tex,required this.iconButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textWidget(text: tex, style: const TextStyle(color: Colors.black54,fontSize: 20),),
        iconButton,
      ],
    );
  }
}
class iconWid extends StatelessWidget {
  const iconWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_forward_ios,color: Colors.black54,);
  }
}

