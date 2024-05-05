import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.label,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.icon,
  }) : super(key: key);

  final String label;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontFamily: 'Sedan',
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 8), // Add spacing between label and text field
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon:
                icon != null ? Icon(icon) : null, // Add prefix icon if provided
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
          ),
        ),
      ],
    );
  }
}
