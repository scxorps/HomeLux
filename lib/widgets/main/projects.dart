// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/models/projects.dart';
import 'package:homelux/responsive.dart';
import 'package:homelux/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Text(
            'Our Projects',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white, // Color of the text
              fontWeight: FontWeight.bold, // Font weight
              fontSize: 20, // Font size
              letterSpacing: 1.5, // Letter spacing
              shadows: [
                Shadow(
                  offset: Offset(2, 2), // Shadow offset
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  blurRadius: 3, // Shadow blur radius
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Responsive(
            desktop: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            tablet: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            mobileLarge: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            mobile: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 1,
              childAspectRatio: 0.75,
              crossAxisSpacing: kDefaultPadding * 2, // Increased spacing for mobile
              mainAxisSpacing: kDefaultPadding * 2, // Increased spacing for mobile
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
    double crossAxisSpacing = kDefaultPadding,
    double mainAxisSpacing = kDefaultPadding,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
