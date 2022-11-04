// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';
import 'package:food_bucket/UI/Auth/login_screen.dart';
import 'package:food_bucket/UI/components/custombutton.dart';

class Server_screen extends StatefulWidget {
  Server_screen({Key? key}) : super(key: key);

  @override
  State<Server_screen> createState() => _Server_screenState();
}

class _Server_screenState extends State<Server_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primarycolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: size.width * 0.65,
                child: Image.asset("images/logo1.png"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ENTER YOUR FOODBUCKET SERVER ADDRESS",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whitecolor,
              ),
              width: size.width * 0.8,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "https://",
                          style: TextStyle(color: greycolor, fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        VerticalDivider(
                          width: 0,
                          thickness: 0,
                          color: greycolor,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: greycolor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: greycolor,
                  ),
                  TextFormField(
                    style: TextStyle(color: greycolor),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: InputBorder.none,
                        hintText: "Port e.g 80, 443, 4848",
                        hintStyle: TextStyle(color: greycolor)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomLongButton(
              shape: MaterialStateProperty.all(StadiumBorder()),
                child: Text("Continue"),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Login()));
                })
          ],
        ),
      ),
    );
  }
}
