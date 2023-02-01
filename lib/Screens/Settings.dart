import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Widgets/Divider%20widget.dart';
import 'package:fatimaapp/Widgets/Row%20for%20Setting.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
          child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const textWidget(text: "Settings", style: TextStyle(fontSize: 25,color: Colors.black)),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: const Icon(Icons.close,size: 25,),color: Colors.black,),
      ),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const dividerwid(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                setRow(tex: "Change password", iconButton: IconButton(onPressed: (){}, icon: const iconWid(),),),
                setRow(tex: "Language", iconButton: IconButton(onPressed: (){}, icon: const iconWid(),),),
                setRow(tex: "Addresses", iconButton: IconButton(onPressed: (){}, icon: const iconWid(),),),
                setRow(tex: "Addresses", iconButton: IconButton(onPressed: (){}, icon: const iconWid(),),),
                setRow(tex: "Notification", iconButton:IconButton(onPressed: (){}, icon: const iconWid(),),),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const WelScreen();
                  }));
                }, icon: const Icon(Icons.logout)),
                const textWidget(text: "Log Out", style: TextStyle(color: Colors.black54),),
              ],
            ),
          ),
          // Container(
          //   child: Image.asset("assets/log.png",scale: 5.5,),
          // ),
        ],
      ),
    );
  }
}
