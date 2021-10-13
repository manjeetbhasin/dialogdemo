
import 'package:flutter/material.dart';

class DemoSetBackup extends StatefulWidget {
  const DemoSetBackup({Key? key}) : super(key: key);

  @override
  _DemoSetBackupState createState() => _DemoSetBackupState();
}

class _DemoSetBackupState extends State<DemoSetBackup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(onPressed:(){
          showDialog(context: context, builder: (BuildContext context){
            return SimpleDialog(
              title: Text("Set backup account"),
              children:<Widget> [
                ListTile(
                  leading: CircleAvatar(child: Image.network("https://www.pikpng.com/pngl/m/57-573183_download-200-girls-png-cb-edits-background-girl.png",fit:BoxFit.cover ,),),
               title: Text("User01@gmail.com"),
                  onTap: (){
                    Navigator.pop(context);
                  }
                  
                ),
                    ListTile(

                      leading: CircleAvatar(child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC5te8P7RKcOeJGDtPKYUHi2zcnxf-3KDqDA&usqp=CAU",fit: BoxFit.cover,)),
                      title: Text("User02@gmail.com"),
                      onTap: (){
                        Navigator.pop(context);
                      }
                ),
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.add),),
                  title: Text("Add account"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ],

            );
          });
        }, child: Text("Set Backup"))
      ],
    );
  }
}
