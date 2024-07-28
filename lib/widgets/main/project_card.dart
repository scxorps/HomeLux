// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';
import 'package:homelux/models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: KSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 5),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          TextButton(
            onPressed: () {},
            child: Text(
              'more info>',
              style: TextStyle(color: KprimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}