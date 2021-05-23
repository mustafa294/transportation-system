import 'package:flutter/material.dart';
import 'package:transportation_system/screens/ticket_page.dart';
import 'package:transportation_system/utils/constants.dart';

class ScheduleDescription extends StatelessWidget {
  final String startingTime;
  final String endingTime;
  final String stationName;
  final double amount;

  ScheduleDescription(
      {this.amount,
      @required this.endingTime,
      @required this.startingTime,
      this.stationName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TicketPage(
              startingTime: startingTime,
              endingTime: endingTime,
              pickUpPoint: stationName,
              amount: amount,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        height: 45,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.access_time,
                  size: 20,
                ),
                Icon(
                  Icons.location_on,
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      startingTime,
                      style: TextStyle(
                        color: AppColor.textDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      "${path}both-sided-arrow.png",
                      height: 20,
                      width: 40,
                    ),
                    Text(
                      endingTime,
                      style: TextStyle(
                        color: AppColor.textDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  stationName,
                  style: TextStyle(
                    color: AppColor.textDarkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$ " + amount.toString(),
                        style: TextStyle(
                          color: AppColor.textDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.backgroundColor,
                        ),
                        child: Text(
                          "Select",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
