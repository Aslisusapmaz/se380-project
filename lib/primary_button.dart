import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String buttonText;
  PrimaryButton({this.buttonText});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFB40284A),
            width: 2),

        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child:Text(
          widget.buttonText,
          style: TextStyle(
              color: Color(0xFFB40284A),
              fontSize: 16
          ),),
      ),
    );

  }
}