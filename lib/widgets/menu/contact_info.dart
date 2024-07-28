// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:homelux/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            'Find us :',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        buildContactInfo(
          title: 'Address',
          text: 'mostagasnem -center-',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Algeria',
        ),
        buildContactInfo(
          title: 'E-mail',
          text: 'email@website.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+213 556227413',
        ),
        buildContactInfo(
          title: 'Website',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '$text',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
