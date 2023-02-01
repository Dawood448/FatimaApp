import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class divwidget extends StatelessWidget {
  final String tex;
  const divwidget({Key? key,required this.tex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black,
            endIndent: 20,
            thickness: 2,
          ),
        ),
        textWidget(text: tex, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        const Expanded(
          child: Divider(
            indent: 20,
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}

class dividerwid extends StatelessWidget {
  const dividerwid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:const  [
         Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
         Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

class divOne extends StatelessWidget {
  const divOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:const  [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
