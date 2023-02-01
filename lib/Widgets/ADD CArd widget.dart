import 'package:flutter/material.dart';
Widget MyCard(String text,String textA,)
{
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: const TextStyle(fontSize: 16,color: Colors.black54),),
          const SizedBox(height: 10,),
          Container(
            height: 40,
            width: 340,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40),
                ),

                hintText: textA,
                hintStyle:const TextStyle(color:Colors.grey,),
              ),
            ),
          ),
        ],
      ),
    );
}

Widget MyCardOne(String textx,String texty)
{
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textx,style: const TextStyle(fontSize: 16,color: Colors.black54),),
          const SizedBox(height: 10,),
          SizedBox(
            height: 40,
            width: 150,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: texty,
                hintStyle:const TextStyle(color:Colors.grey,),
              ),
            ),
          ),
        ],
      ),
    );

}