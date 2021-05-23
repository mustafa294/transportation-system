import 'package:flutter/material.dart';
import 'package:transportation_system/screens/schedule_page.dart';
import 'package:transportation_system/utils/constants.dart';

class TransportContainer extends StatelessWidget {
  final String transportationMeans;
  final Color backgroungColor;
  final AssetImage image;

  TransportContainer({
    this.backgroungColor,
    this.transportationMeans,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SchedulePage(
              title: transportationMeans,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: backgroungColor,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: image,
            alignment: Alignment.centerRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              transportationMeans,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Text(
                "Select",
                style: TextStyle(
                  color: AppColor.textDarkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
