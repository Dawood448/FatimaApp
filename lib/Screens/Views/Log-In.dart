import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Screens/Views/forget%20Pass.dart';
import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Widgets/Round%20Gradient%20Button%20Widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/TextForm%20field%20widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void _handleRemeberme(bool? value) {
    _isChecked = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me", value!);
        prefs.setString('email', _emailController.text);
        prefs.setString('password', _passwordController.text);
      },
    );

    setState(() {
      _isChecked = value ;
    });
  }

  void _loadUserEmailPassword() async {
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;
      print(_remeberMe);
      print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        _emailController.text = _email ?? "";
        _passwordController.text = _password ?? "";
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _loadUserEmailPassword();
    super.initState();
  }


  bool? _isChecked = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const WelScreen();
              }));
            },
            icon: const Icon(Icons.close,size: 40,),
            color: Colors.black,
          ),
        ),
        body: Column(
          children:  [
            Stack(
              children:[
                Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.7,
                  decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(400, 250))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const textWidget(text: "LogIn", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
                      const SizedBox(height: 50,),
                      Container(
                        padding: const EdgeInsets.only(top: 20,bottom: 20),
                        child:  KFieldWidget(label:"Login" ,hint:"abc@gmail.com" ,icon:Icons.mail,textInputType: TextInputType.emailAddress,obsecureText: false,controller: _emailController),),
                      Container(
                        padding: const EdgeInsets.only(top: 20,bottom: 10,),
                        child:  KFieldWidget(label: "Password", hint: "Password", icon: Icons.remove_red_eye_sharp, textInputType: TextInputType.visiblePassword,obsecureText: true,controller: _passwordController),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const textWidget(text: "Remember Me", style: TextStyle(color: Colors.black,)),
                            Checkbox(value: _isChecked, onChanged: _handleRemeberme,),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 200,
                            height: 35,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push((MaterialPageRoute(builder: (ctx){
                                  return FogetScreen();
                                })));
                              },
                              child: const Text("Forgot your password?", style: TextStyle(color: Colors.black),),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 70,
                  right: 20,
                  child: kRoundWidget(ht: 80, wd: 80, iconButton: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return LandScreen();
                    }));
                  }, icon: const Icon(Icons.arrow_forward,color: Colors.white,size: 30))),
                ),
              ]
            ),
            const textWidget(text: "Login with Social", style: TextStyle(fontSize: 20,color: Colors.grey)),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/Facebook.png",scale: 2,),
                Image.asset("assets/Gmail-removebg-preview.png",scale: 2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
