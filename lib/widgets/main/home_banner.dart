// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.ismobile(context) ? 1 : 2.3,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            height: 1000, // Adjusted to cover full height of the container
            width: double.infinity,
          ),
          Container(
            color: KdarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Align(
              alignment: Alignment.centerLeft, // Align text to the center left
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                crossAxisAlignment: CrossAxisAlignment.start, // Align to the start (left)
                children: [
                  Text(
                    'Build a great future \n for all of us !',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: stylecolor,
                              fontWeight: FontWeight.w900,
                              fontSize: 65,
                            )
                        : Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: stylecolor,
                              fontWeight: FontWeight.w900,
                              fontSize: 45,
                            ),
                  ),
                  SizedBox(height: 20), // Add some space between text and button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: stylecolor, // Button background color
                      foregroundColor: Colors.white, // Button text color
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                      ),
                      elevation: 10, // Add shadow
                      shadowColor: Colors.black.withOpacity(0.5), // Shadow color
                    ),
                    onPressed: () {},
                    child: Text(
                      ' Step In ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
