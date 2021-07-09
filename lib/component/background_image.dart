import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final int flex;
  final BoxFit fit;

  const BackgroundImage({required this.flex, required this.fit});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/baker.jpg'),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
