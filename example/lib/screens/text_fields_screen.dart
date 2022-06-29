import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class TextFieldsScreen extends StatefulWidget {
  const TextFieldsScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldsScreen> createState() => _TextFieldsScreenState();
}

class _TextFieldsScreenState extends State<TextFieldsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "My Hint Text",
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              labelText: "Field Name"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          enabled: false,
          decoration: InputDecoration(
              hintText: "My Hint Text Disabled",
              labelText: "Field Name Disabled"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name",
              errorText: "My Error Text!"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name",
            prefixIcon: Icon(Icons.search_rounded)
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name",
              suffixIcon: Icon(Icons.check_circle_outline_rounded)
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name",
              prefixIcon:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  child: Text("Click", style: TextStyle(fontSize: 12),),
                  onPressed: (){},
                ),
              ),
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "My Hint Text",
              labelText: "Field Name",
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0)
                  ),
                  child: Text("Click Button attached", style: TextStyle(fontSize: 12),),
                  onPressed: (){},
                ),
              ),
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: "Insert Number",
              labelText: "Insert Number",
            counter: Row(children:
            [
              Icon(Icons.info_outline_rounded, color: Theme.of(context).primaryColor, size: 18,),
              SizedBox(width: 6,),
              Text("my counter", style: TextStyle(fontSize: 12),)
            ],),
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          keyboardType: TextInputType.number,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "Insert Mobile",
            labelText: "Insert Mobile",
              prefixIcon: Icon(Icons.phone_android_rounded)
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              prefixIcon: Icon(Icons.visibility_off_rounded)
          ),
        ),
      ],
    );
  }
}
