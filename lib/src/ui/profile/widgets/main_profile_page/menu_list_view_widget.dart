// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuListViewWidget extends StatefulWidget {
  final List<String> titles;
  final List<TextStyle> textStyles;
  final bool haveIcons;
  final List<Widget> icons;
  final List<Widget> pages;
  final Color backgroundColor;
  final bool haveExit;
  final Function() openLogOutPanel;
  final bool isNavigation;
  final Function(int) selectedIndex;
  final Size screenSize;

  const MenuListViewWidget({
    Key key,
    this.titles,
    this.icons,
    this.backgroundColor,
    this.pages,
    this.haveExit = false,
    this.openLogOutPanel,
    this.isNavigation = true,
    this.selectedIndex,
    this.haveIcons = true,
    this.textStyles,
    @required this.screenSize,
  }) : super(key: key);

  State<StatefulWidget> createState() => _MenuListViewWidgetState();
}

class _MenuListViewWidgetState extends State<MenuListViewWidget> {
  ScrollController _scrollController;
  List<TextStyle> tempTextStyles;

  @override
  void initState() {
    _scrollController = new ScrollController();
    if (widget.textStyles == null) {
      tempTextStyles = [];
      int someSimples =
          widget.haveExit ? widget.titles.length - 1 : widget.titles.length;
      for (int i = 0; i < someSimples; i++) {
        tempTextStyles.add(
          TextStyle(
            color: Color(0xff323B56),
            fontSize: 0.036 * widget.screenSize.width, //13,
            fontWeight: FontWeight.w500,
          ),
        );
      }

      widget.haveExit
          ? tempTextStyles.add(
              TextStyle(
                color: Color(0xffF51F1F),
                fontSize: 0.036 * widget.screenSize.width, //13,
                fontWeight: FontWeight.w500,
              ),
            )
          : print("");
    } else
      tempTextStyles = widget.textStyles;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      controller: _scrollController,
      shrinkWrap: true,
      padding: EdgeInsets.only(
        right: 0.027 * _screenSize.width, //10,
        left: 0.054 * _screenSize.width, //20,
      ),
      itemCount: widget.titles.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () async {
                widget.haveExit && index == widget.titles.length - 1
                    // ? logOutPanel.open()
                    ? widget.openLogOutPanel()
                    : widget.isNavigation
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => widget.pages[index]),
                          )
                        : widget.selectedIndex(index);
              },
              child: Container(
                color: widget.backgroundColor,
                // color: Colors.blue,
                height: 0.166 * _screenSize.width, //60,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: SizedBox()),
                    widget.haveIcons
                        ? Container(
                            // color: Colors.red,
                            height: 0.069 * _screenSize.width, //25,
                            width: 0.069 * _screenSize.width, //25,
                            child: widget.icons[index],
                          )
                        : SizedBox(),
                    widget.haveIcons
                        ? Expanded(flex: 2, child: SizedBox())
                        : SizedBox(),
                    Container(
                      // color: Colors.red,
                      width: 0.472 * _screenSize.width, //170,
                      child: Text(
                        widget.titles[index],
                        textAlign: TextAlign.start,
                        style: tempTextStyles[index],
                      ),
                    ),
                    Expanded(flex: 10, child: SizedBox()),
                    Container(
                      width: 0.041 * _screenSize.width,
                      // color: Colors.greenAccent,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 0.041 * _screenSize.width, //15,
                        color: Colors.grey[400],
                      ),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.001 * _screenSize.width, //0.3,
              indent: widget.haveIcons
                  ? 0.138 * _screenSize.width //50
                  : 0,
              height: 0.003125 * _screenSize.height, //2,
            ),
          ],
        );
      },
    );
  }
}
