import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homelux/constants.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            'Our Goals :',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Color.fromARGB(200, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        buildGoals(text: 'planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way living'),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            color: stylecolor, // Set icon color
          ),
          SizedBox(width: kDefaultPadding ),
          Text(text),
        ],
      ),
    );
  }
}
