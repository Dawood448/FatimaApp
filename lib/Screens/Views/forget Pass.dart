import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Widgets/Round%20Gradient%20Button%20Widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/TextForm%20field%20widget.dart';
import 'package:flutter/material.dart';
class FogetScreen extends StatelessWidget {
  const FogetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white30,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const textWidget(text: "Forgot Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: textWidget(text: "Please enter your email address."
                  "You will receive a link to create a new password via email.",
                  style: TextStyle(fontSize: 20,
                    color: Colors.black54,)),
            ),
            const SizedBox(height: 60,),
            KFieldWidget(label: "Email ", hint: "abs@gmail.com", icon: Icons.mail_lock_outlined, textInputType: TextInputType.emailAddress, obsecureText: false,controller: TextEditingController()),
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                kRoundWidget(ht: 80, wd: 80, iconButton: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward,color: Colors.white,size: 30),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
