//*  Created By:    Mohammad Shamsi        //*  Email:  mshamsi502@gmail.com
//*  Project Name:  avakatan_branches
//*  Created on:    7th October - 07/10/2020     _     15:23:37
//****************************************************************************

import 'package:extended_text/extended_text.dart';
import 'package:jeanswest/src/constants/global/svg_images/global_svg_images.dart';
import 'package:jeanswest/src/constants/global/constants.dart';
import 'package:jeanswest/src/constants/global/colors.dart';
import 'package:jeanswest/src/models/country/country.dart';
import 'package:jeanswest/src/utils/helper/global/helper.dart';
import 'package:jeanswest/src/ui/login/widgets/single_input_code_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConfirmCodeWidget extends StatefulWidget {
  // final PanelController keyboardPanelController;
  final TextEditingController phoneTextEditingController;
  final FocusNode focusNode;
  final bool keyboardIsOpen;
  final String inputPhone;
  final String inputCode;
  final bool hasError;
  final Country selectedCountry;
  final int selectedChar;
  final String minuteTimer;
  final String secondTimer;
  final Function(bool) backToInputPhoneStep;
  final Function(int) updateSelectedChar;
  final Function(String) updateInputCode;
  final Function() startDownTimer;

  const ConfirmCodeWidget({
    Key key,
    // this.keyboardPanelController,
    this.keyboardIsOpen,
    this.inputPhone,
    this.hasError,
    this.selectedCountry,
    this.inputCode,
    this.backToInputPhoneStep,
    this.updateSelectedChar,
    this.selectedChar,
    this.updateInputCode,
    this.minuteTimer,
    this.secondTimer,
    this.startDownTimer,
    this.phoneTextEditingController,
    this.focusNode,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConfirmCodeWidgetState();
}

class _ConfirmCodeWidgetState extends State<ConfirmCodeWidget> {
  TextEditingController textEditingController = new TextEditingController();
  FocusNode focusNodes0 = new FocusNode();
  FocusNode focusNodes1 = new FocusNode();
  FocusNode focusNodes2 = new FocusNode();
  FocusNode focusNodes3 = new FocusNode();
  FocusNode focusNodes4 = new FocusNode();
  List<FocusNode> myFocusNodes = List<FocusNode>();
  @override
  void initState() {
    myFocusNodes.add(focusNodes0);
    myFocusNodes.add(focusNodes1);
    myFocusNodes.add(focusNodes2);
    myFocusNodes.add(focusNodes3);
    myFocusNodes.add(focusNodes4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Container(
      height: 0.41 * _screenSize.height, //240,
      width: _screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: _screenSize.width,
            margin: EdgeInsets.symmetric(
              horizontal: 0.054 * _screenSize.width, //20
            ),
            child: ExtendedText.rich(
              TextSpan(
                text:
                    'کد تایید برای شماره موبایل ${toPhoneStyle(widget.inputPhone)}(${widget.selectedCountry.dialCode}) ارسال گردید.',
                style: TextStyle(
                  fontSize: 0.038 * _screenSize.width, //14,
                  color: Colors.grey[700],
                ),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: GestureDetector(
                      onTap: () {
                        widget.backToInputPhoneStep(true);
                      },
                      child: Container(
                        width: 0.3 * _screenSize.width, //108,
                        // color: Colors.red,
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.022 * _screenSize.width, //8,
                            vertical: 0.003125 * _screenSize.height //2,
                            ),
                        child: Row(
                          children: [
                            Container(
                                height: 0.034 * _screenSize.width, //12,
                                width: 0.034 * _screenSize.width, //12,
                                child: GlobalSvgImages.editIconForRight),
                            SizedBox(
                              width: 0.0138 * _screenSize.width, //5,
                            ),
                            Text(
                              "login_screen.edit".tr(),
                              style: TextStyle(
                                color: MAIN_BLUE_00_COLOR,
                                fontWeight: FontWeight.w500,
                                fontSize: 0.0333 * _screenSize.width, //12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: SizedBox(
                      width: 0.027 * _screenSize.width, //10,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 0.039 * _screenSize.height, //25,
          ),
          Directionality(
            textDirection: rtlTextDirection,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleInputCodeWidget(
                  selectedChar: widget.selectedChar,
                  inputCode: widget.inputCode,
                  focusNode: myFocusNodes,
                  hasError: widget.hasError,
                  updateSelectedChar: widget.updateSelectedChar,
                  updateChar: updateChar,
                  ordinal: 4,
                ),
                SizedBox(
                  width: 0.027 * _screenSize.width, //10,
                ),
                SingleInputCodeWidget(
                  selectedChar: widget.selectedChar,
                  inputCode: widget.inputCode,
                  focusNode: myFocusNodes,
                  hasError: widget.hasError,
                  updateSelectedChar: widget.updateSelectedChar,
                  updateChar: updateChar,
                  ordinal: 3,
                ),
                SizedBox(
                  width: 0.027 * _screenSize.width, //10,
                ),
                SingleInputCodeWidget(
                  selectedChar: widget.selectedChar,
                  inputCode: widget.inputCode,
                  focusNode: myFocusNodes,
                  hasError: widget.hasError,
                  updateSelectedChar: widget.updateSelectedChar,
                  updateChar: updateChar,
                  ordinal: 2,
                ),
                SizedBox(
                  width: 0.027 * _screenSize.width, //10,
                ),
                SingleInputCodeWidget(
                  selectedChar: widget.selectedChar,
                  inputCode: widget.inputCode,
                  focusNode: myFocusNodes,
                  hasError: widget.hasError,
                  updateSelectedChar: widget.updateSelectedChar,
                  updateChar: updateChar,
                  ordinal: 1,
                ),
                SizedBox(
                  width: 0.027 * _screenSize.width, //10,
                ),
                SingleInputCodeWidget(
                  selectedChar: widget.selectedChar,
                  inputCode: widget.inputCode,
                  // focusNode: widget.focusNode,
                  focusNode: myFocusNodes,
                  hasError: widget.hasError,
                  updateSelectedChar: widget.updateSelectedChar,
                  updateChar: updateChar,
                  ordinal: 0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.14 * _screenSize.height, //90,
          ),
          widget.minuteTimer == '00' && widget.secondTimer == '00'
              ? Container(
                  alignment: Alignment.center,
                  height: 0.039 * _screenSize.height, //25,
                  child: GestureDetector(
                    child: Text(
                      "login_screen.resend_code".tr(),
                      style: TextStyle(
                        color: MAIN_BLUE_COLOR,
                        fontSize: 0.038 * _screenSize.width, //14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        widget.startDownTimer();
                        widget.updateInputCode('-----');
                      });
                    },
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  height: 0.039 * _screenSize.height, //25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 0.034 * _screenSize.width, //12,
                          width: 0.034 * _screenSize.width, //12,
                          child: GlobalSvgImages.greyTimeIcon),
                      SizedBox(
                        width: 0.0138 * _screenSize.width, //5,
                      ),
                      Text(
                        'ارسال مجدد کد تا  ${widget.minuteTimer}:${widget.secondTimer}  دیگر',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 0.0333 * _screenSize.width, //12,
                        ),
                      ),
                    ],
                  ),
                ),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }

  updateChar(int index, String char) {
    String oldCode = widget.inputCode;
    String newCode =
        oldCode.substring(0, index) + char + oldCode.substring(index + 1);
    print('new inputCode : $oldCode');
    setState(() {
      widget.updateInputCode(newCode);
    });
  }
}