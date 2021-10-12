import 'package:flutter/material.dart';

class ringtoneDemo extends StatefulWidget {
  const ringtoneDemo({Key? key}) : super(key: key);

  @override
  _ringtoneDemoState createState() => _ringtoneDemoState();
}

enum ringtone { None, Callisto, Ganymede, Luna, Oberan, Phobos }

class _ringtoneDemoState extends State<ringtoneDemo> {
  ringtone? _charater = ringtone.None;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext Context) {
                    return AlertDialog(
                      title: Text("Phone ringtone"),
                      titleTextStyle:
                          TextStyle(fontSize: 15, color: Colors.black),
                      content: SingleChildScrollView(
                        child: Column(children: <Widget>[
                          ListTile(
                              title: const Text("None"),
                              leading: Radio<ringtone>(
                              value: ringtone.None,
                              activeColor: Colors.purple,
                              groupValue: _charater,
                              onChanged: (ringtone? value) {
                                setState(() {
                                  _charater = value;
                                });
                              })),
                          ListTile(
                              title: const Text("Callisto"),
                              leading: Radio<ringtone>(
                                  value: ringtone.Callisto,
                                  activeColor: Colors.purple,
                                  groupValue: _charater,
                                  onChanged: (ringtone? value) {
                                    setState(() {
                                      _charater = value;
                                    });
                                  })),
                          ListTile(
                              title: const Text("Ganymede"),
                              leading: Radio<ringtone>(
                                  value: ringtone.Ganymede,
                                  activeColor: Colors.purple,
                                  groupValue: _charater,
                                  onChanged: (ringtone? value) {
                                    setState(() {
                                      _charater = value;
                                    });
                                  })),
                          ListTile(
                              title: const Text("Luna"),
                              leading: Radio<ringtone>(
                                  value: ringtone.Luna,
                                  groupValue: _charater,
                                  activeColor: Colors.purple,
                                  onChanged: (ringtone? value) {
                                    setState(() {
                                      _charater = value;
                                    });
                                  })),
                          ListTile(
                              title: const Text("Oberan"),
                              leading: Radio<ringtone>(
                                  value: ringtone.Oberan,
                                  groupValue: _charater,
                                  activeColor: Colors.purple,
                                  onChanged: (ringtone? value) {
                                    setState(() {
                                      _charater = value;
                                    });
                                  })),
                          ListTile(
                              title: const Text("Phobos"),
                              leading: Radio<ringtone>(
                                  activeColor: Colors.purple,
                                  value: ringtone.Phobos,
                                  groupValue: _charater,
                                  onChanged: (ringtone? value) {
                                    setState(() {
                                      _charater = value;
                                    });
                                  })),

                        ]),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "CANCEL",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Ringtone"),
          )
        ]);

  }
}
