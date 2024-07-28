// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/widgets/main/main_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOMELUX',
      theme: ThemeData.dark().copyWith(
        primaryColor: KprimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodySmall: TextStyle(color: KbodyTextColor),
              bodyMedium: TextStyle(color: KbodyTextColor),
            ),
      ),
      home: MainSection(),
    );
  }
}

