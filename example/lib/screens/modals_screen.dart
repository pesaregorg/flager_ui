import 'package:flager_ui/flager_ui.dart';
import 'package:flutter/material.dart';

class ModalsScreen extends StatefulWidget {
  const ModalsScreen({Key? key}) : super(key: key);

  @override
  State<ModalsScreen> createState() => _ModalsScreenState();
}

class _ModalsScreenState extends State<ModalsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        ElevatedButton(
            onPressed: _showBasicDialog,
            child: const Text("Basic Dialog")
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
            onPressed: _showNoTitleDialog,
            child: const Text("No Title Dialog")
        )
      ],

    );
  }




  Future<void> _showNoTitleDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This message is an example of a Morph design system modal dialogue'),
                //Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: FElevatedButtonStyle.small(primaryColor: Colors.blue),
              child: const Text('Button Title'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }






  Future<void> _showBasicDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This message is an example of a Morph design system modal dialogue'),
                //Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: FElevatedButtonStyle.small(primaryColor: Colors.pink),
              child: const Text('Button Title',),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


}
