import 'package:fatimaapp/Screens/Favourite%20Screen.dart';
import 'package:fatimaapp/Screens/Payments%20screen.dart';
import 'package:fatimaapp/Screens/Profile.dart';
import 'package:fatimaapp/Screens/Settings.dart';
import 'package:fatimaapp/Screens/Valentine-Screen.dart';
import 'package:fatimaapp/Screens/Views/Service%20Cat%20Horizontal%20slider.dart';
import 'package:fatimaapp/Screens/Views/Service%20Catagories%20Slider.dart';
import 'package:fatimaapp/Screens/Views/all%20products%20grid%20view.dart';
import 'package:fatimaapp/Screens/Views/bestSeller-slider.dart';
import 'package:fatimaapp/Screens/Views/newProduct%20Slider.dart';
import 'package:fatimaapp/Screens/Welcome-Screen.dart';
import 'package:fatimaapp/Widgets/RDound%20Screen.dart';
import 'package:fatimaapp/Widgets/Row%20widget%20for%20view%20all.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class LandScreen extends StatefulWidget {
  const LandScreen({Key? key}) : super(key: key);

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.red,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag),),]
        ),
        drawer:  Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child:Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: const Icon(Icons.close,size: 35,),)
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         const textWidget(text: "Profile",style: TextStyle(color: Colors.black,fontSize: 20),),
                        IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const profileScreen();
                          }));
                        }, icon:const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ],
                ),
              ),
              ListTile( title:const Text("Home",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.home),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const WelScreen();}));}),
              ListTile( title:const Text("Product",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.production_quantity_limits_outlined),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const ValenScreen();}));}),
              ListTile( title:const Text("Service",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.cleaning_services),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const SerHorizontalScreen();}));}),
              ListTile( title:const Text("Orders",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.offline_pin_rounded),onTap: (){}),
              ListTile( title:const Text("Appointments",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.app_blocking),onTap: (){}),
              ListTile( title:const Text("Favourite",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.favorite_border),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const FavScreen();}));}),
              ListTile( title:const Text("Payment",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.payments_rounded),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const PaymentScreen();}));}),
              ListTile( title:const Text("Settings",style: TextStyle(fontSize: 20),),leading: const Icon(Icons.settings),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return const SettingScreen();}));}),
            ],
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            const RoundBarScreen(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  viewAllWidget(texA: "Service ", texB: "Categories",
                      textButton: TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const SerHorizontalScreen();
                        }));
                      }, child: const textWidget(text: "View All", style: TextStyle()),),),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.black12,
                      child: serviceCatogriesSlider(),
                  ),
                  const textWidget(text: "Best Sellers", style: TextStyle(fontSize: 20,color: Colors.black)),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.black12,
                    child: bestSeller(),
                  ),
                  viewAllWidget(texA: "New ", texB: "Product",
                    textButton: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return const proGridScreen();
                      }));
                    },
                      child: const textWidget(text: "View All", style: TextStyle()),),),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.black12,
                    child: NewProduct(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
