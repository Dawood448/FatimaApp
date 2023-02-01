import 'package:fatimaapp/Screens/Click%20on%20Add%20Card%20screen.dart';
import 'package:fatimaapp/Screens/Views/ADD%20Card%20screen.dart';
import 'package:fatimaapp/Widgets/Column%20widget%20for%20payments.dart';
import 'package:fatimaapp/Widgets/Divider%20widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:fatimaapp/Widgets/row%20for%20payments.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
            icon: const Icon(Icons.arrow_back_sharp,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const textWidget(text: "Payments", style: TextStyle(color: Colors.black,fontSize: 30),),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/visa_PNG18.png",scale: 8.5,),
                        ),
                        const colWid(text: "Global",tex: "034XXX-00X0001",),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/master12.jpg",scale: 3.8,),
                        ),
                        const colWid(text: "Fast cash",tex: "034XXX-00X0001",),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                  ],
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const KrowWid(te: "Subtotal",tx: "535"),
                  const KrowWid(te: "Discount",tx: "5%"),
                  const KrowWid(te: "Shipping",tx: "10.00"),
                  const divOne(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    textWidget(text: "Total", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    textWidget(text: "AED 500", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                  ],
                ),
                ],
              ),
            ),
           Column(
             children: [
               InkWell(
                 child: DottedBorder(
                   color: Colors.orangeAccent,
                   child: Container(
                     width: MediaQuery.of(context).size.width*0.8,
                     height: 60,
                     child: const Center(child: Text("+    Add Card",style: TextStyle(fontSize: 20),)),
                   ),),
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                     return const AddCardScreen();
                   }));
                 },
               ),
               const SizedBox(height: 20,),
               InkWell(
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: 60,
                   decoration: const BoxDecoration(
                     gradient: LinearGradient(
                       colors: [Colors.yellow, Colors.red],
                       begin: Alignment.bottomLeft,
                       end: Alignment.topRight,
                     ),
                   ),
                   child:  const Center(
                     child: Text("Confirm Booking",style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.normal,
                       fontSize: 25,
                     ),),
                   ),
                 ),
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                     return const Clickscreen();
                   }));
                 },
               ),
             ],
           ),

          ],
        ),
      ),

    );
  }
}
