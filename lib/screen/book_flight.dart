import 'package:flight_booking/const/colors.dart';
import 'package:flight_booking/const/styles.dart';
import 'package:flight_booking/screen/boarding_pass.dart';
import 'package:flutter/material.dart';

class BookFlight extends StatelessWidget {
  const BookFlight({Key? key}) : super(key: key);

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
                  top: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Let's book your",
                                    style: Styles().normalS(
                                        fontW: FontWeight.w600,
                                        fontS: 24,
                                        color: Colours().white),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "flight",
                                        style: Styles().normalS(
                                            fontW: FontWeight.w600,
                                            fontS: 26,
                                            color: Colours().white),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        "assets/airplane.png",
                                        height: 22,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.yellow.shade800,
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Image.asset(
                                  "assets/profile.png",
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Card(
                            margin: EdgeInsets.zero,
                            color: Colours().white,
                            elevation: 1.5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 50,
                                            child: TextField(
                                              controller: TextEditingController(
                                                  text: "Semarang (SRG)"),
                                              style: Styles().normalS(
                                                  fontW: FontWeight.w800,
                                                  fontS: 15,
                                                  color: Colours().black),
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: "From",
                                                labelStyle: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: 50,
                                            child: TextField(
                                              controller: TextEditingController(
                                                  text: "Semarang (SRG)"),
                                              style: Styles().normalS(
                                                  fontW: FontWeight.w800,
                                                  fontS: 15,
                                                  color: Colours().black),
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: "To",
                                                labelStyle: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Card(
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: SizedBox(
                                            height: 35,
                                            width: 35,
                                            child: Center(
                                                child: Image.asset(
                                              "assets/swap.png",
                                              height: 20,
                                            )),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: w / 2.6,
                                        child: TextField(
                                          readOnly: true,
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                helpText: "Departure",
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2030));
                                          },
                                          controller: TextEditingController(
                                              text: "Jun 02, 2022"),
                                          style: Styles().normalS(
                                              fontW: FontWeight.w800,
                                              fontS: 15,
                                              color: Colours().black),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            labelText: "Departure",
                                            labelStyle: const TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: w / 2.6,
                                        child: TextField(
                                          readOnly: true,
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                helpText: "Arrival",
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2030));
                                          },
                                          controller: TextEditingController(
                                              text: "Jun 04, 2022"),
                                          style: Styles().normalS(
                                              fontW: FontWeight.w800,
                                              fontS: 15,
                                              color: Colours().black),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            labelText: "Arrival",
                                            labelStyle: const TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    minWidth: w,
                                    height: 50,
                                    color: Colours().black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Search",
                                      style: Styles().normalS(
                                          fontW: FontWeight.w500,
                                          fontS: 16,
                                          color: Colours().white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Upcoming Flight",
                                style: Styles().normalS(
                                    fontW: FontWeight.w700,
                                    fontS: 17,
                                    color: Colours().black),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "See All",
                                    style: Styles().normalS(
                                        fontW: FontWeight.w600,
                                        fontS: 14,
                                        color: Colours().primary),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colours().primary,
                                    size: 22,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BoardingPass()));
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10),
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
                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colours()
                                                      .primary
                                                      .withOpacity(.08),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0,
                                                        vertical: 4),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.date_range,
                                                      size: 17,
                                                      color: Colours().primary,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "May 30, 2022",
                                                      style: Styles().normalS(
                                                          fontW: FontWeight.w600,
                                                          fontS: 13,
                                                          color:
                                                              Colours().primary),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colours()
                                                      .primary
                                                      .withOpacity(.08),
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0,
                                                        vertical: 4),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.access_time,
                                                      size: 17,
                                                      color: Colours().primary,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "3H 30 Min",
                                                      style: Styles().normalS(
                                                          fontW: FontWeight.w600,
                                                          fontS: 13,
                                                          color:
                                                              Colours().primary),
                                                    ),
                                                  ],
                                                ),
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
                                                  "08:00 AM",
                                                  style: Styles().normalS(
                                                      fontW: FontWeight.w600,
                                                      fontS: 12,
                                                      color: Colours().black),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
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
                                                  "08:00 AM",
                                                  style: Styles().normalS(
                                                      fontW: FontWeight.w600,
                                                      fontS: 12,
                                                      color: Colours().black),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
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
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 67.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colours().g2,
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
                                      color: Colours().g2,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
