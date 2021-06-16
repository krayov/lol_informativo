import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {

  String text;
  Function onPressed;

  RedButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.red[800],
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),

        onPressed: () {
          onPressed();
        });
  }
}
