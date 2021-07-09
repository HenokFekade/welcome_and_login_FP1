import 'package:flutter/material.dart';
import 'package:welcome_and_login/constants.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obsecure;

  const MyTextField({
    required this.icon,
    required this.hint,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: kPrimaryColor,
          ),
          SizedBox(width: 25.0),
          Flexible(
            child: TextField(
              obscureText: obsecure,
              decoration: InputDecoration(
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
