import 'package:flutter/material.dart';
import 'package:mcsi/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SignInPage();
  }
}
