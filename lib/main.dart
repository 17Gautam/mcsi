import 'package:flutter/material.dart';
import 'package:mcsi/app/sign_in/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/sign_in/sign_in_page.dart';


Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'MCSI Church',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),
    );
  }
}
