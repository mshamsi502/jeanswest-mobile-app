//*  Created By:    Mohammad Shamsi        //*  Email:  mshamsi502@gmail.com
//*  Project Name:  avakatan_branches
//*  Created on:    7th October - 07/10/2020     _     15:23:37
//****************************************************************************

import 'package:jeanswest/src/constants/global/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final String initText;

  const CustomTextFieldWidget({
    Key key,
    this.textEditingController,
    this.title,
    this.initText,
  }) : super(key: key);
  State<StatefulWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: MAIN_BLUE_COLOR,
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          style: TextStyle(fontSize: 14),
          controller: widget.textEditingController,
          showCursor: true,
          decoration: InputDecoration(
            hintText: widget.initText,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            border: InputBorder.none,
          ),
        ),
      ),
    ]);
  }
}