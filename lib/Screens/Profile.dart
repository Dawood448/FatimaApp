import 'dart:convert';
import 'package:fatimaapp/Model%20Classes/Profile%20Model%20Class.dart';
import 'package:fatimaapp/Screens/Landing-Screen.dart';
import 'package:fatimaapp/Widgets/Profile%20Widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {

  List<AutoGenerate> usList=[];
  Future<List<AutoGenerate>> fun()async{
    Uri ur=Uri.parse("https://jsonplaceholder.typicode.com/users");
    http.Response response=await http.get(ur);
    var dec=jsonDecode(response.body)as List;
    for(int i=0;i<dec.length;i++){
      AutoGenerate obj=AutoGenerate.fromJson(dec[i]);
      usList.add(obj);
    }
    setState(() {
    });
    return usList;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var res=fun();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const LandScreen();
            }));
          },
          icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const textWidget(text: "Profile",style:TextStyle(fontSize: 30,color: Colors.black,) ),
            const SizedBox(height: 20,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (ctx,index){
              AutoGenerate ob=usList[2];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  proWidget(name: "Name", data: ob.name),
                  const rowWidget(),
                  proWidget(name: "Address", data: ob.address.suite),
                  const rowWidget(),
                  proWidget(name: "City", data: ob.address.city),
                  const rowWidget(),
                  proWidget(name: "Study", data: ob.company.bs),
                  const rowWidget(),
                  proWidget(name: "Phone", data: ob.phone),
                  const rowWidget(),
                  proWidget(name: "Email", data: ob.email),
                  const rowWidget(),
                ],
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}
