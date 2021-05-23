import 'package:flutter/material.dart';
import 'package:transportation_system/common_widgets/location_description.dart';
import 'package:transportation_system/utils/constants.dart';

class TicketPage extends StatelessWidget {
  final String pickUpPoint;
  final String startingTime;
  final String endingTime;
  final double amount;

  TicketPage(
      {this.pickUpPoint, this.startingTime, this.endingTime, this.amount});

  Stack buildMain(double height, double width) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Column(
          children: [
            buildUpperPart(height),
            buildBottomPart(height, width),
          ],
        ),
        buildStackedPart(height, width),
      ],
    );
  }

  buildUpperPart(double height) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: height * 0.3,
      child: Text(
        "Ticket",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  buildBottomPart(double height, double width) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Text(
                        "Enter Amount",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.textDarkColor,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter amount",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.monetization_on),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      PaymentCard(
                        cardType: "Credit Card",
                        cardTextColor: Colors.white,
                        cardTypeBackgroundColor: AppColor.backgroundColor,
                        balance: 84,
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                      ),
                      PaymentCard(
                        cardType: "E-Wallet",
                        cardTypeBackgroundColor: Colors.grey.withOpacity(0.2),
                        balance: 18,
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColor.backgroundColor),
                        child: Center(
                          child: Text(
                            "Buy Ticket",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildStackedPart(double height, double width) {
    return Positioned(
      top: height * 0.1,
      height: 200,
      width: width,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(4, 10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                30,
                10,
                30,
                0,
              ),
              child: LocationDescription(),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              startingTime ?? " ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.train,
                              size: 12,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              endingTime ?? " ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              pickUpPoint ?? " ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.monetization_on,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              r"$ " + amount.toString() ?? " ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("${path}qr.png"),
                        fit: BoxFit.contain,
                      )),
                    )
                  ],
                ),
              ),
            )
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
        resizeToAvoidBottomPadding: false,
        backgroundColor: AppColor.backgroundColor,
        body: buildMain(height, width),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final String cardType;
  final Color cardTypeBackgroundColor;
  final int balance;
  final Color cardTextColor;

  PaymentCard(
      {this.cardType,
      this.balance,
      this.cardTypeBackgroundColor,
      this.cardTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: cardTypeBackgroundColor),
            child: Text(
              cardType,
              style: TextStyle(
                color: cardTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            r"Balance : $ " + balance.toString(),
            style: TextStyle(
              color: AppColor.textDarkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
