import 'package:dialogdemo/demoalert.dart';
import 'package:dialogdemo/demoalertdialog.dart';
import 'package:dialogdemo/democupertinoalert.dart';
import 'package:dialogdemo/demopicalert.dart';
import 'package:dialogdemo/ringtone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Column(children: [
        demoAlert(),
        ringtoneDemo(),
        democupertino(),
        Resetting(),
        DemoSetBackup(),
      ],

    ));
  }
}
