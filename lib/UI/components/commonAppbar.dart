// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget actions;
  const CommonAppbar(
      {this.actions = const SizedBox(
        height: 0,
        width: 0,
      ),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      titleSpacing: 0,
      iconTheme: IconThemeData(
        color: blackcolor,
      ),
      backgroundColor: whitecolor,
      leading: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            child: Image.asset(
              "images/Appbarlogo.png",
            ),
          ),
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "RESTAURANT NAME",
                style: TextStyle(
                  fontSize: 14,
                  color: blackcolor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: backgroundcolor,
                size: 30,                      
              )
            ],
          ),
          Text(
            "Location Name",
            style: TextStyle(
              fontSize: 14,
              color: blackcolor,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
      actions: [
        Icon(
          Icons.add,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        actions,
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
