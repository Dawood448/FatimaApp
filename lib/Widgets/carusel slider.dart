import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CarSliScreen extends StatelessWidget {
  const CarSliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/surprising-flower-meanings-balloon-flowers-1650767465.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage("https://theflowerstudio.pk/wp-content/uploads/2022/10/boxed-flowers-min.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage("https://proflowers.pk/wp-content/uploads/2017/12/18-Pink-Pearl-Roses-274x274.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height:350,
        enlargeCenterPage: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlay: true,
        autoPlayCurve: Curves.easeIn,

      ),
    );
  }
}
