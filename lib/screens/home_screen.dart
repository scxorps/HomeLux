// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/responsive.dart';
import 'package:homelux/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
        ? null
        : AppBar(
            backgroundColor: kBgColor,
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            ),
          ),
      drawer: Responsive.isDesktop(context)
        ? null
        : Drawer(
            child: Container(
              color: kBgColor, // Apply the same background color
              child: SideMenuSection(),
            ),
          ),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1920),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: kBgColor, // Apply the same background color
                      child: SideMenuSection(),
                    ),
                  ),
                Expanded(
                  flex: 5,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
