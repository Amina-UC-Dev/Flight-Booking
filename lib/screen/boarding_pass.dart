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
                    SizedBox(height: 10,),
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        ],
                      ),
                    ),
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
