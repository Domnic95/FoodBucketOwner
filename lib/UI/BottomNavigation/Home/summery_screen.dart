// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';
import 'package:food_bucket/UI/components/commonAppbar.dart';

class Summery_screen extends StatefulWidget {
  Summery_screen({Key? key}) : super(key: key);

  @override
  State<Summery_screen> createState() => _Summery_screenState();
}

class _Summery_screenState extends State<Summery_screen> {
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
                  "REPORTS",
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
                return Padding(
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
                                Text(
                                  "Sales Summary",
                                  style: TextStyle(
                                    color: blackcolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Description of the report",
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
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
