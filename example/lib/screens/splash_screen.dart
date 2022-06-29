
import 'package:auto_route/auto_route.dart';
import 'package:example/utilities/app_router.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    //loadAudioFiles();
    WidgetsBinding.instance.addPostFrameCallback((_) => _initFetch(context));
  }

  _initFetch(BuildContext context) async{

    context.router.replace(const HomeRoute());
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: LinearProgressIndicator(minHeight: 3),
            )
          ],
        ),
      ),
    );
  }
}
