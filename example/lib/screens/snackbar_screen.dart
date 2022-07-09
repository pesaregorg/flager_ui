import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                margin: EdgeInsets.all(8),
                action: SnackBarAction(
                    label: "Click Me", onPressed: (){

                }),
                duration: Duration(seconds: 10),
                content: Text('Icon Clicked'),
              ));
            },
            child: Container(child: Text("Default SnackBar"),))
      ],
    );
  }
}
