import 'package:flutter/material.dart';
import 'package:transportation_system/utils/constants.dart';

class InfoColumn extends StatelessWidget {
  final String title;
  final String amount;

  InfoColumn({this.title, this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: AppColor.textDarkColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 25,
            color: AppColor.textDarkColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
