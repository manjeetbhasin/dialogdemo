

import 'package:flutter/material.dart';

class demoAlert extends StatefulWidget {
  const demoAlert({Key? key}) : super(key: key);

  @override
  _demoAlertState createState() => _demoAlertState();
}

class _demoAlertState extends State<demoAlert> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(onPressed: (){
            showDialog(context: context, barrierDismissible: false,builder:(BuildContext Context){
              return AlertDialog(
                title:Text("Discard draft?"),
                titleTextStyle: TextStyle(fontSize: 15,color: Colors.black),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("CANCEL",style: TextStyle(color:Colors.purple),),
                  ),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("DISCARD",style: TextStyle(color: Colors.purple),)),
                ],);
            });
          },child: Text("Click Me"),),

        ]);

  }
}
