import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workmannow/helpers/colors.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final String name;

  RoundedButton({@required this.onPressed, @required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: MyColors.blue,
          minimumSize: Size(200.0, 45.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.grey[200], width: 2.0)),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ));
  }
}
