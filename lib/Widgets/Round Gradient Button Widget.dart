import 'package:flutter/material.dart';
class kRoundWidget extends StatelessWidget {
  final double ht;
  final double wd;
  final IconButton iconButton;

  const kRoundWidget({Key? key,
  required this.ht,
    required this.wd,
    required this.iconButton,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ht,
        width: wd,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            colors: [Colors.pink,Colors.orange],
          ),
        ),
        child:
        iconButton
    );
  }
}
