

import 'package:flutter/material.dart';

class Resetting extends StatefulWidget {
  const Resetting({Key? key}) : super(key: key);

  @override
  _ResettingState createState() => _ResettingState();
}

class _ResettingState extends State<Resetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){
          showDialog(context: context, builder:(BuildContext Context){
            return AlertDialog(
              title: Text("Reset Setting?"),
              titleTextStyle:TextStyle(fontSize: 20,color: Colors.purple),
              content: Text("This will reset your device to its default factory settings.",style: TextStyle(color: Colors.purple),),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("CANCEL",style: TextStyle(color: Colors.purple),)),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("ACCEPT",style: TextStyle(color: Colors.purple),)),
              ],

            );

          });
        }, child: Text("Material Alert Dialog"))
    ]);

  }
}
