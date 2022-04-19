import 'package:flutter/material.dart';
import 'package:mcsi/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    double borderRadius=4.0,
    VoidCallback? onPressed,
  }) : super(
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(assetName),
        Text(text,
          style: TextStyle(color: textColor, fontSize: 15.0),),
        Opacity(
            opacity: 0.0, child: Image.asset(assetName)),
      ],
    ),
    borderRadius: borderRadius,
    color: color,
    onPressed: onPressed,
  );
}