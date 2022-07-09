import 'package:flager_ui/flager_ui.dart';
import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  String gender = "yaser";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Column(
            children: [
              ListTile(
                title: Text("Mohammad"),
                leading: FRadio(
                  value: "mohammad",
                  groupValue: gender,
                  onChange: (value){
                    setState((){
                      gender = value.toString();
                    });
                  },
                ),
              ),

              ListTile(
                title: Text("Ali"),
                leading: FRadio(
                  value: "ali",
                  groupValue: gender,
                  onChange: (value){
                    setState((){
                      gender = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Naghi Colored"),
                leading: FRadio(
                  value: "naghi",
                  color: Colors.pink,
                  groupValue: gender,
                  onChange: (value){
                    setState((){
                      gender = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Jafar Sized"),
                leading: FRadio(
                  size: 44,
                  value: "jafar",
                  groupValue: gender,
                  onChange: (value){
                    setState((){
                      gender = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Yaser Disabled"),
                leading: FRadio(
                  value: "yaser",
                  disabled: true,
                  groupValue: gender,
                  onChange: (value){
                    setState((){
                      gender = value.toString();
                    });
                  },
                ),
              )
            ]
        )
      ],
    );
  }
}
