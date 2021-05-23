import 'package:flutter/material.dart';
import 'package:transportation_system/common_widgets/TransportationContainer.dart';
import 'package:transportation_system/common_widgets/info_column.dart';
import 'package:transportation_system/utils/constants.dart';

class HomePage extends StatelessWidget {
  buildTopPart(double height) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitleRow(),
          SizedBox(
            height: 15,
          ),
          buildSubTitle(),
          SizedBox(
            height: 10,
          ),
          buildSearchBox(),
        ],
      ),
    );
  }

  buildBottomPart() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 100, 25, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: ListView(
          children: [
            Text(
              "Choose Your Transport",
              style: TextStyle(
                fontSize: 20,
                color: AppColor.textDarkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TransportContainer(
              transportationMeans: "Bus",
              image: AssetImage("${path}Assets-1.png"),
              backgroungColor: AppColor.busContainerColor,
            ),
            TransportContainer(
              transportationMeans: "MRT",
              image: AssetImage("${path}Assets-2.png"),
              backgroungColor: AppColor.backgroundColor,
            ),
          ],
        ),
      ),
    );
  }

  buildStackedContainer(double height, double width) {
    return Positioned(
      top: height - 20,
      height: 100,
      width: width,
      child: Container(
        margin: EdgeInsets.only(
          left: 25,
          top: 20,
          right: 25,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(2, 8),
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InfoColumn(
              title: "Rewards",
              amount: r"$ 18",
            ),
            InfoColumn(
              title: "Balance",
              amount: r"$ 10.25",
            ),
            InfoColumn(
              title: "Total Trips",
              amount: " 189",
            ),
          ],
        ),
      ),
    );
  }

  Row buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello,\nJohn Doe",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage("${path}profile_image.jpeg"),
          backgroundColor: Colors.grey,
        )
      ],
    );
  }

  Container buildSubTitle() {
    return Container(
      child: Text(
        "Where you will go ?",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Container buildSearchBox() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
          ),
          border: InputBorder.none,
          hintText: "Search",
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
        body: Stack(
          overflow: Overflow.visible,
          children: [
            Column(
              children: [
                buildTopPart(height * 0.3),
                buildBottomPart(),
              ],
            ),
            buildStackedContainer(height * 0.3, width)
          ],
        ),
      ),
    );
  }
}
