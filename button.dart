import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
// constuctor
  final String title;
  final Color color;
  final VoidCallback onPress;

  MyButton(
      {super.key,
      required this.title,
      this.color = const Color(0xfffa5a5a5),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
