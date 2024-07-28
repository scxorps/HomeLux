// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/screens/home_screen.dart';
import 'package:homelux/widgets/main/recommendations.dart';
import 'package:homelux/widgets/main/home_banner.dart';
import 'package:homelux/widgets/main/icon_info.dart';
import 'package:homelux/widgets/main/projects.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ]
        )
      ),
    );
  }
}