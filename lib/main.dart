import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Start.dart';


void main() {
  runApp(App());
}

class  App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.redAccent),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Start(),
        title: new Text('Cometo!',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,
            color: Colors.black),),
        image: new Image.asset('assets/images/logo1.png'),

        photoSize: 100.0,
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.black,
      ),


    );
  }
}
