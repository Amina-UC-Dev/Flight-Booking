import 'package:flight_booking/const/colors.dart';
import 'package:flight_booking/const/styles.dart';
import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colours().g2,
      body: Stack(
        children: [
          SizedBox(
            height: h,
            width: w,
            child: Stack(
              children: [
                Container(
                  height: h / 3,
                  width: w,
                  color: Colours().primary,
                  child: Image.asset(
                    "assets/sky.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: h / 3,
                  width: w,
                  color: Colours().primary.withOpacity(.9),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Color(0xFF258b9d),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.close,
                              color: Colours().white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Boarding Pass",
                        style: Styles().normalS(
                            fontW: FontWeight.w600,
                            fontS: 24,
                            color: Colours().white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 20,top: 30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BoardingPass()));
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Card(
                                  color: Colours().white,
                                  elevation: 1.5,
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .yellow.shade800,
                                                        shape: BoxShape.circle),
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4.0),
                                                    child: Image.asset(
                                                      "assets/profile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Samantha Sushine",
                                                        style: Styles().normalS(
                                                            fontW:
                                                                FontWeight.w700,
                                                            fontS: 17,
                                                            color: Colours()
                                                                .black),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "Calicut",
                                                        style: Styles().normalS(
                                                            fontW:
                                                                FontWeight.w500,
                                                            fontS: 14,
                                                            color:
                                                                Colours().g8),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 12.0),
                                                child: Image.asset(
                                                  "assets/airplane.png",
                                                  height: 24,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: w / 4.5,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "DXB",
                                                    style: Styles().normalS(
                                                        fontW: FontWeight.w800,
                                                        fontS: 22,
                                                        color: Colours().black),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "Dubai",
                                                    style: Styles().normalS(
                                                        fontW: FontWeight.w500,
                                                        fontS: 13,
                                                        color: Colours().g7),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                      color: Colours().g3,
                                                      shape: BoxShape.circle),
                                                ),
                                                Container(
                                                  width: 40,
                                                  height: 1.5,
                                                  color: Colours().g3,
                                                ),
                                                Card(
                                                  margin: EdgeInsets.zero,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  child: SizedBox(
                                                    height: 35,
                                                    width: 35,
                                                    child: Center(
                                                        child: Image.asset(
                                                      "assets/flight.png",
                                                      height: 20,
                                                    )),
                                                  ),
                                                ),
                                                Container(
                                                  width: 40,
                                                  height: 1.5,
                                                  color: Colours().g3,
                                                ),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                      color: Colours().g3,
                                                      shape: BoxShape.circle),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: w / 4.5,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "COK",
                                                    style: Styles().normalS(
                                                        fontW: FontWeight.w800,
                                                        fontS: 22,
                                                        color: Colours().black),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "Cochin",
                                                    style: Styles().normalS(
                                                        fontW: FontWeight.w500,
                                                        fontS: 13,
                                                        color: Colours().g7),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 40,
                                        //   child: Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceBetween,
                                        //     children: [
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //             color: Colours()
                                        //                 .primary
                                        //                 .withOpacity(.08),
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     6)),
                                        //         child: Padding(
                                        //           padding: const EdgeInsets
                                        //                   .symmetric(
                                        //               horizontal: 5.0,
                                        //               vertical: 4),
                                        //           child: Row(
                                        //             children: [
                                        //               Icon(
                                        //                 Icons.date_range,
                                        //                 size: 17,
                                        //                 color:
                                        //                     Colours().primary,
                                        //               ),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Text(
                                        //                 "May 30, 2022",
                                        //                 style: Styles().normalS(
                                        //                     fontW:
                                        //                         FontWeight.w600,
                                        //                     fontS: 13,
                                        //                     color: Colours()
                                        //                         .primary),
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //       ),
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //             color: Colours()
                                        //                 .primary
                                        //                 .withOpacity(.08),
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     6)),
                                        //         child: Padding(
                                        //           padding: const EdgeInsets
                                        //                   .symmetric(
                                        //               horizontal: 5.0,
                                        //               vertical: 4),
                                        //           child: Row(
                                        //             children: [
                                        //               Icon(
                                        //                 Icons.access_time,
                                        //                 size: 17,
                                        //                 color:
                                        //                     Colours().primary,
                                        //               ),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Text(
                                        //                 "3H 30 Min",
                                        //                 style: Styles().normalS(
                                        //                     fontW:
                                        //                         FontWeight.w600,
                                        //                     fontS: 13,
                                        //                     color: Colours()
                                        //                         .primary),
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //       )
                                        //     ],
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 75.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color:
                                            Colours().primary.withOpacity(.9),
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    width: w - 60,
                                    height: 1,
                                    color: Colours().g2,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color:
                                            Colours().primary.withOpacity(.9),
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
