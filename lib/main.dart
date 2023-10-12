import 'package:flutter/material.dart';
import 'package:new_flutter/AllScreens/homescreen.dart';
import 'package:new_flutter/AllScreens/loginscreen.dart';
import 'package:new_flutter/AllScreens/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livreiro',
      theme: ThemeData(
        fontFamily: "Brand Regular",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the conso le where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.idScreen,
      routes: {
        HomeScreen.idScreen: (context) => HomeScreen(),
        LoginScreen.idScreen: (context) => HomeScreen(),
        LoginScreen.idScreen: (context) => LoginScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
