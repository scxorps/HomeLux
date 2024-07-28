// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key,
    required this.desktop,
    required this.tablet,
    required this.mobileLarge,
    required this.mobile,
    });

  final   Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesktop(BuildContext context){
    return  MediaQuery.of(context).size.width >= 1620;
  }

  static bool istablet(BuildContext context){
    return  MediaQuery.of(context).size.width < 1920;
  }

  static bool ismobileLarge(BuildContext context){
    return  MediaQuery.of(context).size.width <= 1334;
  }

  static bool ismobile(BuildContext context){
    return  MediaQuery.of(context).size.width <= 800;
  }
  @override
  Widget build(BuildContext context) {
    final Size _size= MediaQuery.of(context).size;
    if (_size.width >= 1024){
      return desktop;
    }
    else if(_size.width >= 700 && _size.width < 1024 && tablet != null)
    {
      return tablet!;
    }
    else if(_size.width >= 500 && _size.width < 700 && mobileLarge != null)
    {
      return mobileLarge!;
    }
    else{
      return mobile;
    }
  }
}