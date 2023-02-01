import 'package:fatimaapp/Widgets/Divider%20widget.dart';
import 'package:fatimaapp/Widgets/RichText%20widget.dart';
import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class filterScreen extends StatelessWidget {
  const filterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
      title: const textWidget(text: "Filters", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      backgroundColor: Colors.white70,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close,),
        color: Colors.black,
      ),
        actions: [
           Center(child: TextButton(onPressed: (){}, child:const  textWidget(text: "Done", style: TextStyle(color: Colors.grey),),),),
        ],
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const dividerwid(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const textWidget(text: "Featured", style: TextStyle(fontSize: 20),),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
          ),
          const dividerwid(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Krich(tex: "Price: Low to", text: " High"),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
          ),
          const dividerwid(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Krich(tex: "Price: High to", text: " Low"),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
          ),
          const dividerwid(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const textWidget(text: "Newest Arrivals", style: TextStyle(fontSize: 20,),),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
          ),
          const dividerwid(),
        ],
      ),
    );
  }
}
