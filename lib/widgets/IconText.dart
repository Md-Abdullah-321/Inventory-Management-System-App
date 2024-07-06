import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Function calledFunction;

  const IconWithText({
    Key? key,
    required this.text,
    required this.icon,
    required this.calledFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          calledFunction();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!, // Icon on top
            SizedBox(height: 4), // Spacer between icon and text
            Text(text, style: TextStyle(fontSize: 12)), // Text below the icon
          ],
        ),
      ),
    );
  }
}
