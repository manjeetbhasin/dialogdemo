

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class democupertino extends StatefulWidget {
  const democupertino({Key? key}) : super(key: key);

  @override
  _democupertinoState createState() => _democupertinoState();
}

class _democupertinoState extends State<democupertino> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){
          showDialog(context: context, builder:(BuildContext Context)
          {return CupertinoAlertDialog(
            title: Text('Allow "Maps"to access your \n location while you use the \n app?  '),
            content: Text("Your current location will be \n displayed on the map and used for \n directions,nearby search results,and \n estimated traveltimes"),
          actions: [
            CupertinoDialogAction(child: Text("Don't Allow")),
              CupertinoDialogAction(child: Text("Allow")),
             ],

          );

          });
    }, child: Text("Cupertino Alert Dialog")),


         ] );
      }
}
