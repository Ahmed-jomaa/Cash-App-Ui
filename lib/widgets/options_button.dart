// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '/main.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: seconderyColor,
            boxShadow: const [
              // BoxShadow(
              //   color: Color.fromARGB(255, 196, 196, 196),
              //   spreadRadius: 10,
              //   blurRadius: 40,
              // ),
            ],
          ),
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(15),
          child: Image.asset(image),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
