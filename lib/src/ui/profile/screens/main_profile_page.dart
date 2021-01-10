// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jeanswest/src/constants/global/colors.dart';
import 'package:jeanswest/src/constants/profile/constants.dart';
import 'package:jeanswest/src/constants/profile/svg_images/profile_svg_images.dart';
import 'package:jeanswest/src/constants/test_data/user.dart';
import 'package:jeanswest/src/constants/test_data/user_messages.dart';
import 'package:jeanswest/src/models/level_card/level_card.dart';
import 'package:jeanswest/src/ui/global/widgets/avakatan_button_widget.dart';
import 'package:jeanswest/src/ui/profile/screens/more_page.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/membership_card_widget.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/menu_list_view_widget.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/profile_appbar_widget.dart';
import 'package:jeanswest/src/utils/helper/profile/helper_level.dart';

import 'main_menu_list/inbox_page.dart';

class MainProfilePage extends StatefulWidget {
  @override
  _MainProfilePageState createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController;

  Color fadeBlackColor;
  ScrollController listViewScrollController;
  LevelCard userLevel;
  LevelCard nextLevel;
  LevelCard preLevel;
  bool haveUnreadMessage;

  @override
  void initState() {
    super.initState();
    userLevel = userLevelProvider(moneyBuying);
    nextLevel = nextLevelProvider(userLevel);
    haveUnreadMessage = false;
    for (var i = 0; i < userMessages.length; i++) {
      if (!userMessages[i].readed) {
        haveUnreadMessage = true;
        break;
      } else {
        haveUnreadMessage = false;
      }
    }

    scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    var dpiSize = MediaQuery.of(context).devicePixelRatio;
    return Container(
      color: F7_BACKGROUND_COLOR,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Container(
          // color: Colors.amberAccent,

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 0.027 * _screenSize.width, horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AvakatanButtonWidget(
                      icon: SizedBox(
                          height: 0.055 * _screenSize.width,
                          width: 0.055 * _screenSize.width,
                          child: ProfileSvgImages.horMoreIcon),
                      backgroundColor: Colors.white,
                      height: 0.09 * _screenSize.width,
                      width: 0.09 * _screenSize.width,
                      textColor: MAIN_BLUE_COLOR,
                      radius: 50,
                      borderColor: Colors.grey[200],
                      hasShadow: true,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MorePage(title: 'بیشتر'))),
                    ),
                    Stack(
                      children: [
                        AvakatanButtonWidget(
                          icon: SizedBox(
                              height: 0.055 * _screenSize.width,
                              width: 0.055 * _screenSize.width,
                              child: ProfileSvgImages.notificationIcon),
                          backgroundColor: Colors.white,
                          height: 0.09 * _screenSize.width,
                          width: 0.09 * _screenSize.width,
                          textColor: MAIN_BLUE_COLOR,
                          radius: 50,
                          borderColor: Colors.grey[200],
                          hasShadow: true,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InboxPage(
                                        changeHaveUnreadMessage:
                                            changeHaveUnreadMessage,
                                      ))),
                        ),
                        Positioned(
                          bottom: 0.06 * _screenSize.width / 2,
                          // right: 0.03 * _screenSize.width / 2,
                          child: haveUnreadMessage
                              ? Container(
                                  height: 0.022 * _screenSize.width, //8,
                                  width: 0.022 * _screenSize.width, //8,
                                  decoration: BoxDecoration(
                                    color: MAIN_GOLD_COLOR,
                                    borderRadius: BorderRadius.circular(
                                        0.138 * _screenSize.width //50
                                        ),
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: 0.023 * _screenSize.width),
                color: F7_BACKGROUND_COLOR,
                child: Column(
                  children: [
                    ProfileAppBarWidget(
                        userLevel: userLevel,
                        nextLevel: nextLevel,
                        moneyBuying: moneyBuying),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.016 * _screenSize.width),
                        alignment: Alignment.center,
                        height: 0.15 * _screenSize.height,
                        width: _screenSize.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: new AssetImage(
                                'assets/images/png_images/global/invite_friends.png'),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             InviteFriendsScreen(
                        //               userId: 'user-9176509634',
                        //               receivedGift: 250000,
                        //               someOfInvited: 8,
                        //               someOfInstallFromInvited: 5,
                        //               someOfShoppingFromInvited: 3,
                        //             )));
                      },
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: MembershipCardWidget(
                  userLevel: userLevel,
                  nextLevel: nextLevel,
                  preLevel: preLevel,
                  moneyBuying: moneyBuying,
                ),
              ),
              MenuListViewWidget(
                titles: mainProfileListTitles,
                icons: mainProfileListIcons,
                widgets: mainProfileListWidgets,
                backgroundColor: F7_BACKGROUND_COLOR,
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  changeHaveUnreadMessage() {
    setState(() {
      haveUnreadMessage = false;
    });
  }
}
