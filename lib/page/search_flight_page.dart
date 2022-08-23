// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flights_app/shared/constant.dart';
import 'package:flights_app/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({Key? key}) : super(key: key);

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  List fareList = [
    "Armed Forces",
    "Student",
    "Senior Citizen",
    "Double Seat",
  ];
  List referList = [
    "Refer & Earn",
    "Refer & Earn",
    "",
    "What is this?",
  ];

  List offerList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD-dtycubpgyCZq_hXJQtN72es6diAXsWaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD-dtycubpgyCZq_hXJQtN72es6diAXsWaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD-dtycubpgyCZq_hXJQtN72es6diAXsWaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD-dtycubpgyCZq_hXJQtN72es6diAXsWaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD-dtycubpgyCZq_hXJQtN72es6diAXsWaA&usqp=CAU",
  ];

  int tabIndex = 1;

  Widget? tabWidget() {
    if (tabIndex == 1) {
      return oneWay(context);
    } else if (tabIndex == 2) {
      return roundTrip(context);
    } else {
      return multiCity(context);
    }
  }

  List addContainerList = [];

  void tabCountWidget() {
    if (addContainerList.length != 5) {
      setState(() {
        addContainerList.add(buildAddContainerRow());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.grey[700],
                          size: 32,
                        )),
                    SizedBox(width: 10),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: "Flight ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Search",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    Icon(
                      Icons.g_translate_outlined,
                      color: Constant.primaryColor,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                      bottom: -10,
                      right: 15,
                      left: 15,
                      top: -10,
                      child: SizedBox(
                        height: 30,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      tabIndex = 1;
                                      setState(() {});
                                    },
                                    child: Card(
                                        elevation: 0,
                                        color: tabIndex == 1
                                            ? Constant.primaryColor
                                            : Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 4),
                                          child: Text("ONE WAY"),
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      tabIndex = 2;
                                      setState(() {});
                                    },
                                    child: Card(
                                      elevation: 0,
                                      color: tabIndex == 2
                                          ? Constant.primaryColor
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 4),
                                        child: Text("ROUND TRIP"),
                                      ),
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      tabIndex = 3;
                                      setState(() {});
                                    },
                                    child: Card(
                                      elevation: 0,
                                      color: tabIndex == 3
                                          ? Constant.primaryColor
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 4),
                                        child: Text("MULTI CITY"),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(height: 20),
              tabWidget()!,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "SPECIAL FARES (OPTIONAL)",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  itemCount: fareList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(fareList[index]),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              index == 3
                                  ? buildShowModalBottomSheet(context)
                                  : null;
                            },
                            child: Text(
                              referList[index],
                              style: TextStyle(
                                  color: Constant.primaryColor, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (tabIndex == 1) {
                        Navigator.pushNamed(
                            context, AppRoutes.SearchOneWayDetailsPage);
                      } else if (tabIndex == 2) {
                        Navigator.pushNamed(
                            context, AppRoutes.SearchRoundTripDetailsPage);
                      } else {
                        Navigator.pushNamed(
                            context, AppRoutes.SearchRoundTripDetailsPage);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shadowColor: Constant.primaryColor,
                        primary: Constant.primaryColor),
                    child: Center(
                      child: Text(
                        "SEARCH FLIGHTS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Divider(thickness: 1.5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.local_offer, size: 20),
                    SizedBox(width: 8),
                    Expanded(
                        child: Text(
                      "OFFERS",
                      style:
                          TextStyle(fontSize: 18, color: Constant.primaryColor),
                    )),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.OfferPage);
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 18, color: Constant.primaryColor),
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(Icons.arrow_forward_ios_outlined, size: 20),
                  ],
                ),
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  itemCount: offerList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Image(
                            image: NetworkImage(offerList[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(color: Constant.dividerColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8),
                  Text(
                    "EXCLUSIVE PARTNERS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  itemCount: offerList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        child: Image(
                          image: NetworkImage(offerList[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(color: Constant.dividerColor),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), topLeft: Radius.circular(12))),
        context: context,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.55,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: "Fly Safer with",
                      style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Double-Seat!",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  SizedBox(height: 10),
                  Container(height: 2, width: 50, color: Constant.primaryColor),
                  SizedBox(height: 16),
                  Text(
                    "Step up physical distancing by booking two or three adjacent seats for one traveller. Opt from 'Double/Multi Seat' by Indigo or 'Go More' service by GoAir -available only for domestic one-way economy class bookings.",
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("OKAY, GOT IT",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constant.primaryColor)),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          );
        });
  }

  Widget oneWay(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.CitySearchPage);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailContainer(Icons.airplanemode_active_rounded, "FROM",
                    "Chandigarh", "IXC", "Chandigarh Airport"),
                SizedBox(height: 10),
                detailContainer(Icons.airplanemode_active_rounded, "TO",
                    "New Delhi", "DEL", "Indira Gandhi International Airport"),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    detailContainer(Icons.airplanemode_active_rounded,
                        "DEPARTURE DATE", "04 Jun", "Sat, 2022", ""),
                    SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "+ADD RETURN DATE",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Constant.primaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Save more on round trips!",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                detailContainer(Icons.person, "TRAVELLERS & CLASS", "01,",
                    "Economy/Premium Economy", ""),
                SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
              right: 14,
              top: 55,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(Icons.arrow_downward_outlined,
                      size: 26, color: Constant.primaryColor),
                ),
              ))
        ],
      ),
    );
  }

  Widget roundTrip(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.CitySearchPage);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailContainer(Icons.airplanemode_active_rounded, "FROM",
                    "Chandigarh", "IXC", "Chandigarh Airport"),
                SizedBox(height: 10),
                detailContainer(Icons.airplanemode_active_rounded, "TO",
                    "New Delhi", "DEL", "Indira Gandhi International Airport"),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container(
                    //   height: 70,
                    //   width: MediaQuery.of(context).size.width / 2 - 15,
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey[200],
                    //       borderRadius: BorderRadius.circular(4),
                    //       border: Border.all(color: Colors.grey)),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Row(
                    //       mainAxisAlignment:
                    //           MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Icon(
                    //           Icons.departure_board_outlined,
                    //           color: Colors.black45,
                    //         ),
                    //         SizedBox(width: 6),
                    //         Column(
                    //           crossAxisAlignment:
                    //               CrossAxisAlignment.start,
                    //           mainAxisAlignment:
                    //               MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             Text(
                    //               "DEPARTURE DATE",
                    //               style: TextStyle(
                    //                   color: Colors.grey[600],
                    //                   fontWeight: FontWeight.w600),
                    //             ),
                    //             RichText(
                    //               text: TextSpan(
                    //                 text: "04 Jun ",
                    //                 style: TextStyle(
                    //                     color: Colors.black87,
                    //                     fontSize: 16,
                    //                     fontWeight: FontWeight.bold),
                    //                 children: <TextSpan>[
                    //                   TextSpan(
                    //                     text: "Sat, 2022",
                    //                     style: TextStyle(fontSize: 12),
                    //                   )
                    //                 ],
                    //               ),
                    //               maxLines: 2,
                    //               overflow: TextOverflow.ellipsis,
                    //               softWrap: true,
                    //             ),
                    //           ],
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    detailContainer(Icons.airplanemode_active_rounded,
                        "DEPARTURE DATE", "04 Jun", "Sat, 2022", ""),

                    SizedBox(width: 10),
                    Stack(
                      children: [
                        detailContainer(Icons.airplanemode_active_rounded,
                            "RETURN DATE", "05 Jun", "Sun, 2022", ""),
                        Positioned(
                            right: -2,
                            child: Icon(
                              Icons.close,
                              color: Colors.grey[400],
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                detailContainer(Icons.person, "TRAVELLERS & CLASS", "01,",
                    "Economy/Premium Economy", ""),
                SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
              right: 14,
              top: 55,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(Icons.arrow_downward_outlined,
                      size: 26, color: Constant.primaryColor),
                ),
              ))
        ],
      ),
    );
  }

  Widget multiCity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('FROM', style: TextStyle(color: Colors.black45)),
              Text('T0                       ',
                  style: TextStyle(color: Colors.black45)),
              Text('DATE', style: TextStyle(color: Colors.black45)),
            ],
          ),
          SizedBox(height: 12),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.CitySearchPage);
              },
              child: buildContainerRow()),
          SizedBox(height: 8),
          ListView.builder(
              itemCount: addContainerList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Stack(
                    children: [
                      buildAddContainerRow(),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                addContainerList.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.close,
                              size: 20,
                              // Icons.close,
                              color: Colors.red,
                            )),
                      )
                    ],
                  ),
                );
              }),
          SizedBox(height: 12),
          DottedBorder(
            color: Constant.primaryColor,
            strokeWidth: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              // height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  tabCountWidget();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "+ADD CITY",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Constant.primaryColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          detailContainer(Icons.person, "TRAVELLERS & CLASS", "01,",
              "Economy/Premium Economy", ""),
        ],
      ),
    );
  }

  Widget buildContainerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildContainer("IXC", "Chandigarh"),
        buildContainer("BOM", "Mumbai"),
        buildContainer("16 Jun", "Thu 2022"),
      ],
    );
  }

  Widget buildAddContainerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildAddContainer("", ""),
        buildAddContainer("", ""),
        buildAddContainer("", ""),
      ],
    );
  }

  Widget buildContainer(title, details) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              details,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAddContainer(title, details) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Constant.primaryColor)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              details,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailContainer(iconData, initialText, dest, shortDest, location) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.black45,
            ),
            SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  initialText,
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.w600),
                ),
                RichText(
                  text: TextSpan(
                    text: "$dest ",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: "$shortDest",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                Text(
                  "$location",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
