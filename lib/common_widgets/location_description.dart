import 'package:flutter/material.dart';
import 'package:transportation_system/utils/constants.dart';

class LocationDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
              size: 30,
            ),
            Container(
              height: 40,
              child: VerticalDivider(
                thickness: 1,
              ),
            ),
            Icon(
              Icons.location_on,
              color: AppColor.busColor,
              size: 30,
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "From",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Lorem MRT Station",
                  style: TextStyle(
                    color: AppColor.textDarkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Container(
              width: 200,
              child: Divider(
                thickness: 1,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "To",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Dolor MRT Station",
                  style: TextStyle(
                    color: AppColor.textDarkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
