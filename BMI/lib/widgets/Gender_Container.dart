import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
    required this.color,
  });

  final String imagePath;
  final String text;
  final Function() function;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: function,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(imagePath),
                    height: 100,
                    width: 90,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
