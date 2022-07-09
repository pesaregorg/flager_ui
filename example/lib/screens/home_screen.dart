import 'package:example/screens/buttons_screen.dart';
import 'package:example/screens/checkbox_screen.dart';
import 'package:example/screens/modals_screen.dart';
import 'package:example/screens/radio_button_screen.dart';
import 'package:example/screens/snackbar_screen.dart';
import 'package:example/screens/tags_screen.dart';
import 'package:example/screens/text_fields_screen.dart';
import 'package:flutter/material.dart';
import 'package:example/screens/components/drawer_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 7,
      initialIndex: 6,
      child: Scaffold(
        drawer: DrawerMenu(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(

                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                title: Text(AppLocalizations.of(context)!.app_name),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      icon: Icon(Icons.search_rounded),
                      onPressed: (){

                      },
                    ),
                  )
                ],
                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text("Buttons"),
                      icon: Icon(Icons.smart_button),
                    ),
                    Tab(
                      child: Text("Text Fields"),
                      icon: Icon(Icons.text_fields_rounded),
                    ),
                    Tab(
                      child: Text("Tags"),
                      icon: Icon(Icons.tag_rounded),
                    ),
                    Tab(
                      child: Text("Dialogs"),
                      icon: Icon(Icons.messenger_rounded),
                    ),
                    Tab(
                      child: Text("Checkbox"),
                      icon: Icon(Icons.check_box_rounded),
                    ),
                    Tab(
                      child: Text("RadioButton"),
                      icon: Icon(Icons.check_circle_outline_rounded),
                    ),
                    Tab(
                      child: Text("SnackBar"),
                      icon: Icon(Icons.wallet_rounded),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Expanded(

                child: TabBarView(
                  children: [
                    const ButtonsScreen(),
                    const TextFieldsScreen(),
                    const TagsScreen(),
                    const ModalsScreen(),
                    const CheckboxScreen(),
                    const RadioButtonScreen(),
                    const SnackBarScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
