import 'package:flight_booking/const/colors.dart';
import 'package:flight_booking/const/styles.dart';
import 'package:flutter/material.dart';

class BookFlight extends StatelessWidget {
  const BookFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: h,width: w,
            child: Stack(
              children: [
                Container(
                  height: h/3,
                  width: w,
                  color: Colours().primary,
                  child: Image.asset("assets/sky.jpg",fit: BoxFit.cover,),
                ),
                Container(
                  height: h/3,
                  width: w,
                  color: Colours().primary.withOpacity(.9),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 20,right: 10),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Let's book your",style: Styles().normalS(fontW: FontWeight.w600, fontS: 24, color: Colours().white),),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Text("flight",style: Styles().normalS(fontW: FontWeight.w600, fontS: 26, color: Colours().white),),
                            const SizedBox(width: 10,),
                            Image.asset("assets/airplane.png",height: 22,)
                          ],
                        )
                      ],
                    ),
                    Container(height: 50,width: 50,clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade800,
                        shape: BoxShape.circle
                      ),padding:  const EdgeInsets.only(top: 4.0),
                      child: Image.asset("assets/profile.png",fit: BoxFit.cover,),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Card(
                  color: Colours().white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Stack(alignment: Alignment.centerRight,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 50,
                                  child: TextField(
                                    controller: TextEditingController(text: "Semarang (SRG)"),
                                    style: Styles().normalS(fontW: FontWeight.w800, fontS: 15, color: Colours().black),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "From",
                                      labelStyle: const TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                SizedBox(height: 50,
                                  child: TextField(
                                    controller: TextEditingController(text: "Semarang (SRG)"),
                                    style: Styles().normalS(fontW: FontWeight.w800, fontS: 15, color: Colours().black),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "To",
                                      labelStyle: const TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                child: SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: Center(child: Image.asset("assets/swap.png",height: 20,)),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 50,width: w/2.6,
                              child: TextField(
                                readOnly: true,
                                onTap: (){
                                  showDatePicker(
                                      context: context,
                                      helpText: "Departure",
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2030));
                                },
                                controller: TextEditingController(text: "Jun 02, 2022"),
                                style: Styles().normalS(fontW: FontWeight.w800, fontS: 15, color: Colours().black),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Departure",
                                  labelStyle: const TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(height: 50,width: w/2.6,
                              child: TextField(
                                readOnly: true,
                                onTap: (){
                                  showDatePicker(
                                      context: context,
                                      helpText: "Arrival",
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2030));
                                },
                                controller: TextEditingController(text: "Jun 04, 2022"),
                                style: Styles().normalS(fontW: FontWeight.w800, fontS: 15, color: Colours().black),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Arrival",
                                  labelStyle: const TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        MaterialButton(onPressed: (){},minWidth: w,
                          height: 50,
                          color: Colours().black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text("Search",style: Styles().normalS(fontW: FontWeight.w500, fontS: 16, color: Colours().white),),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
