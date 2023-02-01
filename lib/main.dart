import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Screens/my_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main()
{
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: Image.asset("assets/splashscreen.png",),
          backgroundColor: Colors.white,
          centered: true,
          splashTransition: SplashTransition.rotationTransition,
          duration: 3000,
          nextScreen: const MyOrderScreen()),

    );
  }
}
