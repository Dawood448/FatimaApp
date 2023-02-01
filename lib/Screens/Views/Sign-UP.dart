import 'package:fatimaapp/Screens/Views/Log-In.dart';
import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Widgets/RichText%20widget.dart';
import 'package:fatimaapp/Widgets/Round%20Gradient%20Button%20Widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/TextForm%20field%20widget.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const WelScreen();
            }));
          },
          icon: const Icon(Icons.close,size: 30,),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
         Stack(
           children:[
             Container(
               padding: const EdgeInsets.all(20),
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height*0.73,
               decoration: const BoxDecoration(
                   color: Colors.white70,
                   borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(300, 250))
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const textWidget(text: "Sign UP", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),
                   const SizedBox(height: 50,),
                   Container(
                       padding: const EdgeInsets.only(top: 20,bottom: 20),
                       child: KFieldWidget(label: "Email", hint: "abc@gmail.com", icon: Icons.mail, textInputType: TextInputType.emailAddress, obsecureText: false,controller: TextEditingController())),
                   Container(
                       padding: const EdgeInsets.only(top: 20,bottom: 20),
                       child: KFieldWidget(label: "Password", hint: "Password", icon: Icons.remove_red_eye_rounded, textInputType: TextInputType.visiblePassword, obsecureText: true,controller: TextEditingController())),
                   Container(
                       padding: const EdgeInsets.only(top: 20,bottom: 20),
                       child: KFieldWidget(label: "Phone Number", hint: "+923110000", icon: Icons.numbers, textInputType: TextInputType.number, obsecureText: false,controller: TextEditingController())),
                 ],
               ),
             ),
             Positioned(
                 bottom: 30,
                 right: 60,
                 child: kRoundWidget(ht: 80, wd: 80, iconButton: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward,color: Colors.white,size: 30)))),
           ]
         ),
          const SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
          }, child: const textWidget(text: "Already have an account? LogIn", style: TextStyle(color: Colors.black,fontSize: 18))),

        ],
      ),

    );
  }
}
