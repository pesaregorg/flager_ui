import 'package:flager_ui/flager_ui.dart';
import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({Key? key}) : super(key: key);

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool _selected = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        ListTile(
          title: Text("Default Checkbox $_selected"),
          trailing: FCheckbox(
            value: _selected,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Sized Checkbox $_selected"),
          trailing: FCheckbox(
            size: 44,
            iconSize: 28,
            value: _selected,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Icon Checkbox $_selected"),
          trailing: FCheckbox(
            iconData: Icons.add_rounded,
            value: _selected,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Colored Checkbox $_selected"),
          trailing: FCheckbox(
            color: Colors.pink,
            value: _selected,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Disabled Colored Checkbox $_selected"),
          trailing: FCheckbox(
            color: Colors.pink,
            value: _selected,
            disabled: true,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Disabled Checkbox $_selected"),
          trailing: FCheckbox(
            value: _selected,
            disabled: true,
            onChange: (value){
              setState((){
                _selected = value;
              });
            },
          ),
        )
      ],
    );
  }
}
