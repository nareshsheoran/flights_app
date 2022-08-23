// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flights_app/shared/constant.dart';
import 'package:flutter/material.dart';

class SearchOneWayDetailsPage extends StatefulWidget {
  const SearchOneWayDetailsPage({Key? key}) : super(key: key);

  @override
  State<SearchOneWayDetailsPage> createState() =>
      _SearchOneWayDetailsPageState();
}

class _SearchOneWayDetailsPageState extends State<SearchOneWayDetailsPage> {
  List dateList = [
    "Tue, 14 Jun",
    "Wed, 15 Jun",
    "Thu, 16 Jun",
    "Fri, 17 Jun",
    "Sat, 18 Jun",
    "Sun, 19 Jun",
    "Mon, 20 Jun",
    "Mon, 20 Jun",
    "Mon, 20 Jun",
    "Mon, 20 Jun",
    "Mon, 20 Jun",
  ];

  List amountList = [
    "4132",
    "1432",
    "4182",
    "9132",
    "9132",
    "9132",
    "9132",
    "9132",
    "5132",
    "8932",
    "7032",
  ];

  List amount = [
    "4132",
    "1432",
    "4182",
    "9132",
    "9132",
    "9132",
    "9132",
    "9132",
    "5132",
    "8932",
    "7032",
  ];

  List timeList = [
    "1h 5m",
    "1h",
    "1h",
    "1h",
    "1h 5m",
    "1h 5m",
    "1h 5m",
    "1h",
    "1h",
  ];

  List codeList = [
    "MMTSUPER",
    "MONSOONSALE",
    "MMTSUPER",
    "MONSOONSALE",
    "MMTSUPER",
    "MONSOONSALE",
    "MMTSUPER",
    "MONSOONSALE",
    "MMTSUPER",
  ];
  List iconList = [
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
    Icons.airplanemode_active,
  ];
  List titleList = [
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
    "Alliance Air",
  ];
  List titleBList = [
    "Go First",
    "Go First",
    "Go First",
    "Go First",
    "Go First",
    "Go First",
    "Go First",
    "Go First",
    "Go First",
  ];
  List titleCList = [
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
    "IndiGo",
  ];

  List startTimeList = [
    "17.35",
    "17.35",
    "17.35",
    "17.35",
    "17.35",
    "17.35",
    "17.35",
    "17.35",
    "17.35",
  ];
  List startCityList = [
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
    "Chandigarh",
  ];
  List endCityList = [
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
    "Delhi",
  ];
  List endTimeList = [
    "18.40",
    "18.40",
    "18.40",
    "18.40",
    "18.40",
    "18.40",
    "18.40",
    "18.40",
    "18.40",
  ];
  List stopList = [
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
    "Non stop",
  ];
  List plansList = [
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
    "View Prices",
  ];

  List seatList = [
    "1",
    "4",
    "5",
    "3",
    "9",
    "7",
    "2",
    "8",
    "6",
  ];

  List bottomList = [
    "Non Stop",
    "Morning Departure",
    "Indigo",
    "Vistara",
    "Go First",
    "Late Departure",
  ];

  int tabIndex = 1;

  Widget? fareListTabWidget() {
    if (tabIndex == 1) {
      return buildCenterList();
    } else if (tabIndex == 2) {
      return buildCenterList();
    } else {
      return buildCenterList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                // border: Border.all(color: Constant.primaryColor),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.arrow_back_outlined)),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Chandigarh to New Delhi",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "04 Jun-05 Jun |1 Adult | Economy",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Icon(Icons.edit),
                                        Text("Edit")
                                      ],
                                    ),
                                    SizedBox(width: 12),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              decoration: BoxDecoration(
                                  color: Constant.primaryColor,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Constant.primaryColor,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.notification_important_rounded,
                                        color: Colors.white),
                                    Text(
                                      "Price\nAlert",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          children: [
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(-90 / 360),
                              child: Card(
                                  color: Constant.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topRight: Radius.circular(6))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text("JUN"),
                                  )),
                            ),
                            SizedBox(
                              height: 56,
                              width: MediaQuery.of(context).size.width - 70,
                              child: ListView.builder(
                                itemCount: amountList.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return buildDateCard(
                                    dateList[index],
                                    amountList[index],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            tabIndex = 1;
                            setState(() {});
                          },
                          child: Container(
                              height: 56,
                              decoration: BoxDecoration(),
                              // width: MediaQuery.of(context).size.width - 44,
                              child: buildFareCard(
                                  "Cheapest",
                                  "3425",
                                  "1 h",
                                  tabIndex == 1
                                      ? Constant.primaryColor
                                      : Colors.white))),
                      GestureDetector(
                          onTap: () {
                            tabIndex = 2;
                            setState(() {});
                          },
                          child: Container(
                              height: 56,
                              decoration: BoxDecoration(),
                              // width: MediaQuery.of(context).size.width - 44,
                              child: buildFareCard(
                                  "Fastest",
                                  "3189",
                                  "1 h",
                                  tabIndex == 2
                                      ? Constant.primaryColor
                                      : Colors.white))),
                      GestureDetector(
                          onTap: () {
                            tabIndex = 3;
                            setState(() {});
                          },
                          child: Container(
                              height: 56,
                              decoration: BoxDecoration(),
                              // width: MediaQuery.of(context).size.width - 44,
                              child: buildFareCard(
                                  "You May Prefer",
                                  "3815",
                                  "1 h",
                                  tabIndex == 3
                                      ? Constant.primaryColor
                                      : Colors.white))),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 56,
                //     decoration: BoxDecoration(),
                //     width: MediaQuery.of(context).size.width - 44,
                //     child: ListView.builder(
                //       itemCount: fareList.length,
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index) {
                //         return buildFareCard(fareList[index], amountList[index],
                //             timeList[index]);
                //       },
                //     ),
                //   ),
                // ),
                fareListTabWidget()!,
              ],
            ),
            positionedWidget(),
          ],
        ),
      ),
    );
  }

  Widget buildCenterList() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.health_and_safety_outlined),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Get 100% Refund on Flight Cancellation",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right_outlined,
                                    color: Colors.green),
                                SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                      "Now get full refund on domestic flight cancellation, for COVID+ cases. No questions asked. #MMTPromise",
                                      style: TextStyle(fontSize: 10)),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text("Know More",
                                style: TextStyle(
                                    fontSize: 12, color: Constant.primaryColor))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            tabIndex == 3
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined,
                            size: 18, color: Colors.grey[600]),
                        SizedBox(width: 8),
                        Text(
                          "Flight based on your past bookings",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        )
                      ],
                    ),
                  )
                : SizedBox(width: 0),
            ListView.builder(
              itemCount: timeList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: buildCard(
                    iconList[index],
                    (tabIndex == 1
                        ? titleList[index]
                        : (tabIndex == 2
                            ? titleBList[index]
                            : titleCList[index])),
                    startTimeList[index],
                    startCityList[index],
                    timeList[index],
                    stopList[index],
                    endTimeList[index],
                    endCityList[index],
                    amountList[index],
                    plansList[index],
                    codeList[index],
                    amount[index],
                    seatList[index],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  color: Constant.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notification_important_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tracking flight prices for this trip",
                                  style: TextStyle(fontSize: 15)),
                              SizedBox(height: 6),
                              Text(
                                  "You will receive alerts on price hikes & drops",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 88),
          ],
        ),
      ),
    );
  }

  Widget buildCard(icon, title, startTime, startCity, totalTime, stop, endTime,
      endCity, fare, price, code, amount, seat) {
    return Card(
      elevation: 6,
      shadowColor: Constant.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 8),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                children: [
                  Text(startTime,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(startCity,
                      style: TextStyle(fontSize: 12, color: Colors.black54))
                ],
              ),
              Column(
                children: [
                  Text(totalTime,
                      style: TextStyle(fontSize: 14, color: Colors.black87)),
                  SizedBox(height: 2),
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.green,
                  ),
                  SizedBox(height: 2),
                  Text(stop,
                      style: TextStyle(fontSize: 12, color: Colors.black54))
                ],
              ),
              Column(
                children: [
                  Text(endTime,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(endCity,
                      style: TextStyle(fontSize: 12, color: Colors.black54))
                ],
              ),
              Column(
                children: [
                  Text("\u{20B9} $fare",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(
                    price,
                    style:
                        TextStyle(fontSize: 12, color: Constant.primaryColor),
                  )
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Constant.primaryColor,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Constant.primaryColor),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 2),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(1),
                        border: Border.all(color: Constant.primaryColor),
                      ),
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          "Use $code and get FLAT Rs.\u{20B9}$amount instant discount on this flight",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "$seat Seats left at this price",
                  style: TextStyle(color: Colors.red, fontSize: 10),
                )
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(360),
                        topLeft: Radius.circular(360),
                      ),
                      color: Constant.primaryColor,
                      border: Border.all(
                        color: Constant.primaryColor,
                      )),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Constant.primaryColor,
                              border: Border.all(
                                color: Colors.white,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 16,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          "Lock Price and Pay Later",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.grey[600],
                        size: 16,
                      ),
                      SizedBox(width: 4),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildDateCard(date, amount) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(date),
            Text(
              "\u{20B9} $amount",
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
      ),
    );
  }

  Widget buildFareCard(fare, amount, time, color) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(fare),
            Text(
              "\u{20B9}$amount | $time",
              style: TextStyle(),
            )
          ],
        ),
      ),
    );
  }

  Widget positionedWidget() {
    return Positioned(
        bottom: 10,
        left: 10,
        right: 10,
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.black54),
          ),
          child: Row(
            children: [
              SizedBox(width: 6),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 4, 4, 40),
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                            itemCount: bottomList.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            // scrollDirection: Axis.vertical,
                            // physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // height: 60,
                                  // width: 75,

                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black54),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Center(
                                      child: Text(
                                        bottomList[index],
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )),
                ),
              ),
              SizedBox(width: 6),
              Container(
                height: 71,
                decoration: BoxDecoration(
                  color: Constant.primaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                  border: Border.all(color: Constant.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.filter_list, color: Colors.white),
                        Text("Search & Filters",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
