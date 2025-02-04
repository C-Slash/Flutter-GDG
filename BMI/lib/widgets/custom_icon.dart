import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.function, required this.icon});

final Function() function;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 33, 53, 63)),),
        onPressed: function,
        icon: Icon(icon));
  }
}