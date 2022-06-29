import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children:  [
        Text("Basic"),
        ElevatedButton(
            onPressed: (){},
            child: Text("Elevated Button")
        ),
        SizedBox(height: 10,),
        TextButton(

            onPressed: (){},
            child: Text("Text Button")
        ),
        SizedBox(height: 10,),
        OutlinedButton(
            onPressed: (){},
            child: Text("Outlined Button")
        ),
        SizedBox(height: 10,),
        Text("with loading"),
        ElevatedButton(
            onPressed: (){},
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.white,strokeWidth: 2.0),
            )
        ),
        SizedBox(height: 10,),
        TextButton(

            onPressed: (){},
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.white,strokeWidth: 2.0, backgroundColor: Theme.of(context).primaryColor),
            )
        ),
        SizedBox(height: 10,),
        OutlinedButton(
            onPressed: (){},
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.white,strokeWidth: 2.0, backgroundColor: Theme.of(context).primaryColor),
            )
        ),
        SizedBox(height: 10,),
        Text("Disabled"),
        ElevatedButton(
            onPressed: null,
            child: Text("Elevated Button")
        ),
        SizedBox(height: 10,),
        TextButton(
            onPressed: null,
            child: Text("Text Button")
        ),
        SizedBox(height: 10,),
        OutlinedButton(
            onPressed:  null,
            child: Text("Outlined Button")
        ),
        SizedBox(height: 10,),
        Text("With Icon"),
        ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.person_rounded),
            label: Text("Elevated Button")
        ),
        SizedBox(height: 10,),
        TextButton.icon(
            icon: Icon(Icons.person_rounded),
            onPressed: (){},
            label: Text("Text Button")
        ),
        SizedBox(height: 10,),
        OutlinedButton.icon(
            icon: Icon(Icons.person_rounded),
            onPressed: (){},
            label: Text("Outlined Button")
        ),

      ],
    );
  }
}
