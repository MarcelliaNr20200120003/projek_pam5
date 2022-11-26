import 'package:flutter/material.dart';
import 'package:projek_pam5/screens/sign_in_screen.dart';
import 'package:projek_pam5/screens/social_network_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Catalog Furniture',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignInScreen());
  }
}
