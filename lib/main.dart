import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          animationDuration: Duration(seconds: 2),
          backgroundColor: Colors.black,
          splash: Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.5, 0]),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.castle,
                    size: 60,
                    color: Colors.white,
                  ),
                  Text(
                    'version : 0.0.1',
                    style:
                        TextStyle(fontFamily: 'pacifico', color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          duration: 4000,
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
