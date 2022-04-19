import 'package:flutter/material.dart';
import 'package:mcsi/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    double borderRadius:4.0,
    VoidCallback? onPressed,
  }) : super(
    child: Text(
      text,
      style: TextStyle(
          color: textColor,
          fontSize: 15
      ),
    ),
    borderRadius: borderRadius,
    color: color,
    onPressed: onPressed,
  );
}