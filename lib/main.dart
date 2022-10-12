import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove debug banner...
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
          body: Container(
        child: Center(
            child: Text(
          "Introduction to Flutter",
          style: TextStyle(fontSize: 24),
        )),
      )),
    );
  }
}
