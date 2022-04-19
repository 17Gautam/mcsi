import 'package:flutter/material.dart';
import 'package:mcsi/app/sign_in/sign_in_button.dart';
import 'package:mcsi/app/sign_in/social_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInPage extends StatelessWidget {

  Future<void> _signInAnonymously() async {
    try {
      final userCredentials = await FirebaseAuth.instance.signInAnonymously();
      print('${userCredentials.user?.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to MCSI Life'),
        elevation: 4.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 48.0,
          ),

          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in With Google',
            textColor: Colors.black,
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign in With Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            borderRadius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'images/email-logo.png',

            text: 'Sign in with email',
            textColor: Colors.white,
            color: Colors.orangeAccent,
            borderRadius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Colors.black,
            color: Colors.teal,
            borderRadius: 4.0,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }

  void _signInWithGoogle() {}
}
