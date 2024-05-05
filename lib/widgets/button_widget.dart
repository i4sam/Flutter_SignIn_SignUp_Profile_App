import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPress,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
  });

  final String text;
  final IconData? icon;
  final VoidCallback onPress;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon != null
            ? IconButton(
                onPressed: onPress,
                icon: Icon(
                  icon,
                  color: Colors.blue,
                ),
              )
            : const SizedBox(),
        ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: padding,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
