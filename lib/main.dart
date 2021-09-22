import 'package:flutter/material.dart';
import 'package:task/theme/light_theme.dart';
import 'package:task/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  lightTheme,
      title: 'facebook_ui_flutter',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
