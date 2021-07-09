import 'package:flutter/material.dart';
import 'package:welcome_and_login/constants.dart';
import 'package:welcome_and_login/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authenticate Page',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            headline4: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, height: 3.0),
            headline5:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            button: TextStyle(
              color: kPrimaryColor,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(0.4))))),
      home: WelcomeSceen(),
    );
  }
}
