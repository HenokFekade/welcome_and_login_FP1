import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:welcome_and_login/component/background_image.dart';
import 'package:welcome_and_login/constants.dart';
import 'package:welcome_and_login/screens/login.dart';

class WelcomeSceen extends StatelessWidget {
  const WelcomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BackgroundImage(flex: 4, fit: BoxFit.cover),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Spacer(flex: 2),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BAKING LESSON\n',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      TextSpan(
                        text: 'MASTER THE ART OF BAKING',
                        style: Theme.of(context).textTheme.headline5,
                      )
                    ],
                  ),
                ),
                Spacer(flex: 6),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: FittedBox(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 15.0,
                        ),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'START LEARNING',
                              style:
                                  Theme.of(context).textTheme.button!.copyWith(
                                        color: Colors.black,
                                      ),
                            ),
                            SizedBox(width: 20.0),
                            Icon(Icons.arrow_forward, color: Colors.black)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
