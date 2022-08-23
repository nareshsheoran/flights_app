// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flights_app/shared/constant.dart';
import 'package:flutter/material.dart';

class BookTripPage extends StatefulWidget {
  const BookTripPage({Key? key}) : super(key: key);

  @override
  State<BookTripPage> createState() => _BookTripPageState();
}

class _BookTripPageState extends State<BookTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 4),
                    Column(
                      children: [
                        Text(
                          "Trip To",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          "New Delhi",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              detailDepartContainer(Icons.add_to_drive, "IXC-DEL", "Sat,4 Jun",
                  "20.30-21.30", "1h", "ALLIANCE SUPER SAVER", "Non Stop"),
              Divider(
                color: Colors.white,
                indent: 10,
                endIndent: 10,
              ),
              detailReturnContainer(Icons.add_to_drive, "DEL-IXC", "Sun,5 Jun",
                  "19.00-19.55", "55m", "ALLIANCE SUPER SAVER", "Non Stop"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("VIEW FLIGHT DETAILS"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Baggage Policy"),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Colors.black)
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.shopping_bag, color: Colors.black,size: 18),
                                Icon(Icons.shopping_bag, color: Colors.black,size: 18)
                              ],
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cabin Bag"),
                                  Text("Check-in bag")
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("5 Kgs(1 piece only"),
                                Text("5 Kgs(1 piece only")
                              ],
                            ),
                            SizedBox(width: 30)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget detailDepartContainer(
      iconData, title, returnD, date, time, economy, stop) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(2),
            child: Icon(iconData, color: Colors.black),
          ))),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DEPART $title",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              Text("$returnD| $date| $time| $stop",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              Text("Economy > $economy",
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }

  Widget detailReturnContainer(
      iconData, title, returnD, date, time, economy, stop) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(2),
            child: Icon(iconData, color: Colors.black),
          ))),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Return $title",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              Text("$returnD| $date| $time| $stop",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              Text("Economy > $economy",
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}
