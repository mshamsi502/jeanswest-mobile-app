// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jeanswest/src/constants/global/constValues/colors.dart';

import 'package:jeanswest/src/utils/helper/global/helper.dart';

class SingleProductTitleWidget extends StatefulWidget {
  final String brand;
  final String fullName;
  final int price;

  final Function() openExistInBranches;
  const SingleProductTitleWidget({
    Key key,
    @required this.openExistInBranches,
    @required this.brand,
    @required this.fullName,
    @required this.price,
  }) : super(key: key);
  @override
  _SingleProductTitleWidgetState createState() =>
      _SingleProductTitleWidgetState();
}

class _SingleProductTitleWidgetState extends State<SingleProductTitleWidget> {
  String _brand;
  String _fullName;
  int _price;

  @override
  void initState() {
    updateTitlesValue();
    super.initState();
  }

  void updateTitlesValue() {
    setState(() {
      _brand = widget.brand;
      _fullName = widget.fullName;
      _price = widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    if (_brand != widget.brand ||
        _fullName != widget.fullName ||
        _price != widget.price) updateTitlesValue();
    return Container(
      // color: Colors.green,
      padding: EdgeInsets.symmetric(
        horizontal: 0.054 * _screenSize.width, //20
        vertical: 0.015 * _screenSize.height, //10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _brand,
                style: TextStyle(
                  fontSize: 0.038 * _screenSize.width, //14,
                ),
              ),
              GestureDetector(
                onTap: () => widget.openExistInBranches(),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.0083 * _screenSize.width, //3,

                    vertical: 0.003125 * _screenSize.height, //2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      0.138 * _screenSize.width, //50,
                    ),
                    border: Border.all(color: MAIN_BLUE_COLOR),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg_images/global/new/fi-rr-marker.svg',
                        color: MAIN_BLUE_COLOR,
                        width: 0.0444 * _screenSize.width, //16,

                        height: 0.0444 * _screenSize.width, //16,
                      ),
                      SizedBox(
                        width: 0.0083 * _screenSize.width, //3,
                      ),
                      Text(
                        "موجودی شعب",
                        style: TextStyle(
                          fontSize: 0.0333 * _screenSize.width, //12,

                          color: MAIN_BLUE_COLOR,
                        ),
                      ),
                      // SizedBox(width: 3),
                      SvgPicture.asset(
                        'assets/images/svg_images/global/new/fi-rr-angle-small-left.svg',
                        color: MAIN_BLUE_COLOR,
                        width: 0.05 * _screenSize.width, //18,

                        height: 0.05 * _screenSize.width, //18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.031 * _screenSize.height, //20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  _fullName,
                  style: TextStyle(
                    fontSize: 0.038 * _screenSize.width, //14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 0.054 * _screenSize.width, //20
              ),
              Row(children: [
                Text(
                  toPriceStyle(_price, isFromRialToToman: true),
                  style: TextStyle(
                    fontSize: 0.0444 * _screenSize.width, //16,
                  ),
                ),
                SizedBox(
                  width: 0.00555 * _screenSize.width, //2,
                ),
                Text(
                  "تومان",
                  style: TextStyle(
                    fontSize: 0.038 * _screenSize.width, //14,
                  ),
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}