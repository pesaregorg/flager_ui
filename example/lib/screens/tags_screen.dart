import 'package:flager_ui/flager_ui.dart';
import 'package:flutter/material.dart';

class TagsScreen extends StatefulWidget {
  const TagsScreen({Key? key}) : super(key: key);

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 4.0,
        children: [
          FElevatedTag(labelText: "disabled", color: Colors.purple, disabled: true,),
          FElevatedTag(labelText: "1"),
          FElevatedTag(labelText: "my tag", color: FColors.storm,onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Yay! A SnackBar!'),
            ));
          }),
          FElevatedTag(labelText: "Select Tag", color: Colors.purple, selected: true,),
          FElevatedTag(labelText: "Select Tag 2", selected: true,),
          FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: true,),
          FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          FElevatedTag(labelText: "my tag", color: FColors.storm,),
          FElevatedTag(labelText: "my tag", color: FColors.storm,),
          FElevatedTag(labelText: "my tag", color: FColors.storm, selected: true,),
          FElevatedTag(labelText: "my tag", color: FColors.storm, labelFontSize: 14),
          FElevatedTag(labelText: "my tag", color: FColors.storm, labelFontSize: 18),
          FElevatedTag(labelText: "my tag", color: FColors.storm, labelFontSize: 24, selected: true,),
          FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          FElevatedTag(labelText: "my tag",  labelFontSize: 24, selected: true,),
          FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          FElevatedTag(labelText: "my tag", prefixIcon: Icons.access_time_rounded,),
          FElevatedTag(
              labelText: "labelText",
            prefixIcon: Icons.account_box_rounded,
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Tag Clicked'),
              ));
            },
            onPrefixTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(

                content: Text('Icon Clicked'),
              ));
            },
          )
        ],
      ),
    );
  }
}
