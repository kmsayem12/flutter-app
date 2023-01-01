import 'package:flutter/material.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the LoginScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginScreen(),
        // When navigating to the "/second" route, build the HomeScreen widget.
        '/home': (context) => const HomeScreen(),
      },
    ),
  );
}