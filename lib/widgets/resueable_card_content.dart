import 'package:flutter/material.dart';

class ReusableCardContent extends StatelessWidget {
  const ReusableCardContent(
      {Key? key, required this.imageLink, required this.label})
      : super(key: key);
  final IconData imageLink;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          imageLink,
          size: 80,
        ),
        // Image.asset(
        //   imageLink,
        //   height: 80,
        // ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
        ),
      ],
    );
  }
}
