import 'package:fatimaapp/Screens/Views/Log-In.dart';
import 'package:fatimaapp/Screens/Views/Sign-UP.dart';
import 'package:fatimaapp/Widgets/RichText%20widget.dart';
import 'package:flutter/material.dart';
class WelScreen extends StatelessWidget {
  const WelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Krich(tex: "Welcome to ", text: "AYS"),
                    const Ktext(textA: "Explore",size: 20),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/logo.png"),
                    )
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: const LinearGradient(
                        colors: [Colors.pink,Colors.orange],
                      ),
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const LoginScreen();}));
                    }, child: const Text("LogIn",style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 245,
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const SignUpScreen();}));
                    }, child: const Text("SignUp",style: TextStyle(
                      color: Colors.black,
                    ),)),
                  ),
                ],
              ),
              TextButton(
                  onPressed: (){},
                  child: const Text("Skip",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black38,
                    decoration: TextDecoration.underline,
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
