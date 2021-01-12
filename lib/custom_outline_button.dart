import 'package:flutter/material.dart';

class CustomOutlineButton extends StatefulWidget {
  final String buttonText;
  CustomOutlineButton({this.buttonText});
  @override
  _CustomOutlineButtonState createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<CustomOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFB40284A),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child:Text(
          widget.buttonText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16
          ),),

      ),
    );

  }
}