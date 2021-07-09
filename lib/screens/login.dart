import 'package:flutter/material.dart';
import 'package:welcome_and_login/component/background_image.dart';
import 'package:welcome_and_login/component/round_icon.dart';
import 'package:welcome_and_login/component/text_field.dart';
import 'package:welcome_and_login/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BackgroundImage(flex: 4, fit: BoxFit.cover),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SING IN',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(height: 1),
                      ),
                      Text(
                        'SING IN',
                        style: Theme.of(context).textTheme.button!.copyWith(
                              fontSize: 16.0,
                            ),
                      )
                    ],
                  ),
                ),
                Spacer(flex: 4),
                MyTextField(icon: Icons.alternate_email, hint: 'Email Address'),
                Spacer(flex: 2),
                MyTextField(icon: Icons.lock, hint: 'Password', obsecure: true),
                Spacer(flex: 4),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 20.0, left: 20, bottom: 20.0),
            child: Row(
              children: [
                RoundIcon(icon: Icons.facebook),
                Spacer(flex: 1),
                RoundIcon(icon: Icons.message),
                Spacer(flex: 8),
                Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
