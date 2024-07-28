// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: KSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color.fromARGB(200, 255, 255, 255),
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/images/ologo.png',
                width: 100,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Homelux',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
            ),
            Text(
              'Modern home with great interior',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
