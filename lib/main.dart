import 'package:eedf_app/constants.dart';
import 'package:eedf_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EEDF Cournon',
      theme: ThemeData(
        //Colors App
        scaffoldBackgroundColor: AppConstBackgroundColor,
        primaryColor: AppConstPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: AppConstTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}