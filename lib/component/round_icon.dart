import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final IconData icon;

  const RoundIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 2.0)),
      child: Icon(icon, color: Colors.white.withOpacity(0.6)),
    );
  }
}
