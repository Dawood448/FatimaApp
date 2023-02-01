import 'package:flutter/material.dart';
class GradButton extends StatelessWidget {
  final String tex;
  const GradButton({Key? key,required this.tex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellow, Colors.red],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child:  Center(
        child: Text(tex,style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 25,
        ),),
      ),
    );
  }
}
class newGraButton extends StatelessWidget {
  final double hg;
  final double wd;
  final tex;
   const newGraButton({Key? key,
    required this.hg,
    required this.wd,
    required this.tex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wd,
      height: hg,
      decoration:  const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellow, Colors.red],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child:  Center(
        child: Text(tex,style:  const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18,
        ),),
      ),
    );
  }
}
