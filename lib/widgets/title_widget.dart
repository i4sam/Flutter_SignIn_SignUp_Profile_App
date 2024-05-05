import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, // Use any suitable icon
          color: Colors.blue, // Set icon color
          size: 32, // Set icon size
        ),
        SizedBox(width: 8), // Add spacing between icon and text
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontFamily: 'Sedan',
          ),
        ),
      ],
    );
  }
}
