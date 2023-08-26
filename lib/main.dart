import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/intro.dart';
import 'package:salon_app/pages/login.dart';
import 'package:salon_app/pages/register.dart';
import 'package:salon_app/uidata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
      routes: <String, WidgetBuilder>{
        UIData.loginPageRoute: (BuildContext context) => LoginPage(),
        UIData.homePageRoute: (BuildContext context) => HomePage(),
        UIData.introPageRoute: (BuildContext context) => IntroPage(),
        UIData.registerPageRoute: (BuildContext context) => RegisterPage(),
        UIData.bookPageRoute: (BuildContext context) => BookPage(),
      }
    );
  }
}

