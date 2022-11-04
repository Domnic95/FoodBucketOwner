// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';
import 'package:food_bucket/UI/BottomNavigation/Home/profile_screen.dart';
import 'package:food_bucket/UI/components/commonAppbar.dart';

class Orders_screen extends StatefulWidget {
  Orders_screen({Key? key}) : super(key: key);

  @override
  State<Orders_screen> createState() => _Orders_screenState();
}

class _Orders_screenState extends State<Orders_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: CommonAppbar(),
      body: Column(
        children: [
          Container(
            color: primarycolor,
            height: 30,
            width: size.width,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "DAY IS ACTIVE",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ORDERS",
                  style: TextStyle(
                    color: textcolor,
                  ),
                ),
                Text(
                  "4th March,2022",
                  style: TextStyle(
                    color: textcolor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Profile_Screen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      // height: size.height * 0.09,
                      width: size.width,
                      child: Card(
                        elevation: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                            bottom: 10,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.70,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "#123",
                                          style: TextStyle(
                                            color: blackcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                           ),
                                        if (index == 0)
                                          Container(
                                            height: 20,
                                            width: size.width * 0.3,
                                            color: bluecolor,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "PROSESSING",
                                                style: TextStyle(
                                                  color: whitecolor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "RS 34560",
                                    style: TextStyle(
                                      color: blackcolor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
