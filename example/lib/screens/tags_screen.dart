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
          const FElevatedTag(labelText: "disabled", color: Colors.purple, disabled: true,),
          const FElevatedTag(labelText: "1"),
          FElevatedTag(labelText: "my tag", color: Colors.deepPurple,onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Yay! A SnackBar!'),
            ));
          }),
          const FElevatedTag(labelText: "Select Tag", color: Colors.purple, selected: true,),
          const FElevatedTag(labelText: "Select Tag 2", selected: true,),
          const FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: true,),
          const FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FElevatedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple,),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple,),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple, selected: true,),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 14),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 18),
          const FElevatedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 24, selected: true,),
          const FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          const FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          const FElevatedTag(labelText: "my tag",  labelFontSize: 24, selected: true,),
          const FElevatedTag(labelText: "my tag",  labelFontSize: 24),
          const FElevatedTag(labelText: "my tag", prefixIcon: Icons.access_time_rounded,),
          FElevatedTag(
              labelText: "labelText",
            prefixIcon: Icons.account_box_rounded,
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Tag Clicked'),
              ));
            },
            onPrefixTap: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(

                content: Text('Icon Clicked'),
              ));
            },
          ),





          const FOutlinedTag(labelText: "disabled", color: Colors.purple, disabled: true,),
          const FOutlinedTag(labelText: "1"),
          FOutlinedTag(labelText: "my tag", color: Colors.deepPurple,onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Yay! A SnackBar!'),
            ));
          }),
          const FOutlinedTag(labelText: "Select Tag", color: Colors.purple, selected: true,),
          const FOutlinedTag(labelText: "Select Tag 2", selected: true,),
          const FOutlinedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FOutlinedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FOutlinedTag(labelText: "Select Tag 3", color: Colors.blue, selected: true,),
          const FOutlinedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FOutlinedTag(labelText: "Select Tag 3", color: Colors.blue, selected: false,),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple,),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple,),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple, selected: true,),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 14),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 18),
          const FOutlinedTag(labelText: "my tag", color: Colors.deepPurple, labelFontSize: 24, selected: true,),
          const FOutlinedTag(labelText: "my tag",  labelFontSize: 24),
          const FOutlinedTag(labelText: "my tag",  labelFontSize: 24),
          const FOutlinedTag(labelText: "my tag",  labelFontSize: 24, selected: true,),
          const FOutlinedTag(labelText: "my tag",  labelFontSize: 24),
          const FOutlinedTag(labelText: "my tag", prefixIcon: Icons.access_time_rounded, disabled: true,),
          FOutlinedTag(
            labelText: "labelText",
            prefixIcon: Icons.account_box_rounded,
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Tag Clicked'),
              ));
            },
            onPrefixTap: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(

                content: Text('Icon Clicked'),
              ));
            },
          )
        ],
      ),
    );
  }
}
