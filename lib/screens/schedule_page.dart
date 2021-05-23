import 'package:flutter/material.dart';
import 'package:transportation_system/common_widgets/location_description.dart';
import 'package:transportation_system/common_widgets/schedule_description.dart';
import 'package:transportation_system/utils/constants.dart';

class SchedulePage extends StatelessWidget {
  final String title;

  SchedulePage({this.title});

  Container buildTopPart(double height, double width) {
    return Container(
      alignment: Alignment.topCenter,
      height: height * 0.3,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("${path}Assets-3.png"),
            alignment: Alignment.bottomRight),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }

  buildBottomPart() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Column(
          children: [
            buildLocation(),
            buildScheduleTitle(),
            buildScheduleDescription(),
          ],
        ),
      ),
    );
  }

  Container buildLocation() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 30, 30, 25),
      padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            offset: Offset(6, 12),
            blurRadius: 12,
            spreadRadius: 7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: LocationDescription(),
    );
  }

  Container buildScheduleTitle() {
    return Container(
      margin: EdgeInsets.only(left: 30, bottom: 10),
      alignment: Alignment.topLeft,
      child: Text(
        'Choose Schedule',
        style: TextStyle(
          fontSize: 22,
          color: AppColor.textDarkColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Expanded buildScheduleDescription() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            ScheduleDescription(
              startingTime: "10 : 00",
              endingTime: "10 : 30",
              stationName: "Lorem MRT Station",
              amount: 5.0,
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            ScheduleDescription(
              startingTime: "11 : 05",
              endingTime: "11 : 45",
              stationName: "Lorem MRT Station",
              amount: 5.0,
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            ScheduleDescription(
              startingTime: "11 : 25",
              endingTime: "12 : 30",
              stationName: "Lorem MRT Station",
              amount: 3.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          children: [
            buildTopPart(height, width),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }
}
