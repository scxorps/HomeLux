// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homelux/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Responsive.ismobileLarge(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the rows vertically
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // Align children evenly
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context, // Pass context as an argument
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context, // Pass context as an argument
                        icon: Icons.location_on,
                        text: '169+',
                        label: 'Projects',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40), // Adjust height as needed
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // Align children evenly
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context, // Pass context as an argument
                        icon: Icons.public,
                        text: '30+',
                        label: 'countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context, // Pass context as an argument
                        icon: Icons.star,
                        text: '13k+',
                        label: 'stars',
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Align children evenly
              children: [
                buildIconInfo(
                  context: context, // Pass context as an argument
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'clients',
                ),
                buildIconInfo(
                  context: context, // Pass context as an argument
                  icon: Icons.location_on,
                  text: '169+',
                  label: 'Projects',
                ),
                buildIconInfo(
                  context: context, // Pass context as an argument
                  icon: Icons.public,
                  text: '30+',
                  label: 'countries',
                ),
                buildIconInfo(
                  context: context, // Pass context as an argument
                  icon: Icons.star,
                  text: '13k+',
                  label: 'stars',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context, // Corrected parameter name
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center items vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center items horizontally
      children: [
        Icon(
          icon,
          size: 50,
          color: Color.fromARGB(201, 35, 112, 4), // Set icon color
        ),
        SizedBox(height: 10), // Adjust height as needed
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontSize: 30,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Color.fromARGB(201, 35, 112, 4),
          ),
        ),
      ],
    );
  }
}
