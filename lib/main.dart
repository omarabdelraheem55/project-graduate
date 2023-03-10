import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/patient/Home_page.dart';
import 'package:graduation_project/screens/Splash_screen.dart';
import 'package:graduation_project/search/search.dart';
import 'package:graduation_project/screens/blood_bank/bloodBank.dart';
import 'helper/New_Color.dart';
import 'screens/welcomePage.dart';

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
        // localizationsDelegates: [
        //   GlobalCupertinoLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        // ],
        // supportedLocales: [
        //   Locale("ar")
        // ],
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.teal
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            ),
        home: AnimatedSplashScreen(
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          duration: 3000,
          splash: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF199A8E)
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset("lib/assets/images/logo-white.png", height: 200)),
                RichText(
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: "C",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: "a", style: TextStyle(color:Colors.white)),
                        TextSpan(
                            text: "re__????????????",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(text: "??", style: TextStyle(color:Colors.white)),
                        TextSpan(
                            text: "????????", style: TextStyle(color: Colors.black)),
                      ]),
                ),
              ],
            ),
          ),
          nextScreen: HomePage(),
        ));
  }
}
