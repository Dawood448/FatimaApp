import 'package:fatimaapp/Widgets/Text%20Widget.dart';
import 'package:flutter/material.dart';
class proWidget extends StatelessWidget {
  final name;
  final data;
  const proWidget({Key? key,required this.name,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 80,
          width: MediaQuery.of(context).size.width,
          // color: Colors.yellowAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              textWidget(text:name,style: const TextStyle(color: Colors.black54,fontSize: 20),),
              SizedBox(height: 8,),
              textWidget(text:data,style: const TextStyle(color: Colors.black,fontSize: 20),),
            ],
          ),

        );

  }

}

class rowWidget extends StatelessWidget {
  const rowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 10,
          endIndent: 10,

        ),),
      ],
    );
  }
}

