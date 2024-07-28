// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/widgets/menu/contact_info.dart';
import 'package:homelux/widgets/menu/goals.dart';
import 'package:homelux/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final double padding = isMobile ? 8.0 : kDefaultPadding * 2;

        return Container(
          height: constraints.maxHeight,
          child: SafeArea(
            child: Column(
              children: [
                Logo(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactInfo(),
                        Divider(),
                        Goals(),
                        SizedBox(height: isMobile ? 3 : kDefaultPadding), // Adjusted space dynamically
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: FittedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: isMobile ? 0 : 55.0), // Dynamic padding
                                  child: SvgPicture.asset(
                                    'assets/icons/download.svg',
                                    color: Color.fromARGB(201, 35, 112, 4), // Change this to your desired color
                                  ),
                                ),
                                SizedBox(width: 14),
                                Text(
                                  'Download Brochure',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: isMobile ? 3 : kDefaultPadding), // Dynamic spacing for larger screens
                        Spacer(), // Spacer to push the icon buttons to the bottom in larger screens
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/linkdin.svg',
                                color: Colors.blue, // LinkedIn color
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/github.svg',
                                color: Colors.black, // GitHub color
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/twitter.svg',
                                color: Colors.blue, // Twitter color
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/dribble.svg',
                                color: Colors.pink, // Dribbble color
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
