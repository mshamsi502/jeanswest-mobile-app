// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************
import 'dart:io';
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
import 'package:jeanswest/src/ui/profile/screens/friends/invite_friend_page.dart';
import 'package:jeanswest/src/ui/profile/screens/friends/user_friends_list_page.dart';
import 'package:jeanswest/src/ui/profile/screens/more_page.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/membership_card_widget.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/menu_list_view_widget.dart';
import 'package:jeanswest/src/ui/profile/widgets/main_profile_page/profile_appbar_widget.dart';
import 'package:jeanswest/src/utils/helper/profile/helper_level.dart';
import 'package:jeanswest/src/ui/profile/screens/tab_bar_view_page.dart';
import 'package:intent/action.dart' as android_action;
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/extra.dart' as android_extra;
import 'package:intent/typedExtra.dart' as android_typedExtra;

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
    userLevel = userLevelProvider(user.moneyBuying);
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
                        moneyBuying: user.moneyBuying),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TabBarViewPage(
                              title: 'دوستان',
                              selectedTab: 0,
                              tabTitles: [
                                'دعوت دوست',
                                'دوستان من',
                              ],
                              tabWidgets: [
                                InviteFrindePage(
                                  userId: 'user-${user.phoneNumber}',
                                  receivedGift: user.receivedGift,
                                  someOfInvited: user.someOfInvited,
                                  someOfInstallFromInvited:
                                      user.someOfInstallFromInvited,
                                  someOfShoppingFromInvited:
                                      user.someOfShoppingFromInvited,
                                ),
                                UserFriendsListPage(
                                  friends: user.friends,
                                ),
                              ],
                              bottomButton: 'ارسال لینک',
                              bottomButtonFunction: bottomButtonFunction,
                            ),
                          ),
                        );
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
                  moneyBuying: user.moneyBuying,
                ),
              ),
              MenuListViewWidget(
                titles: mainProfileListTitles,
                icons: mainProfileListIcons,
                // widgets: mainProfileListWidgets,
                backgroundColor: F7_BACKGROUND_COLOR,
                userLevel: userLevel,
                nextLevel: nextLevel,
                moneyBuying: user.moneyBuying,
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

  bottomButtonFunction() {
    String link = 'club.avakatan.ir/public/jeanswest.apk';
    String text = 'به جین وست ملحق شو :)\n$link';

    if (Platform.isAndroid) {
      android_intent.Intent()
        ..setAction(android_action.Action.ACTION_SEND)
        ..setType('text/plain')
        ..putExtra(android_extra.Extra.EXTRA_TEXT, text)
        ..startActivity().catchError((e) => print(e));
    }
    //  else if (Platform.isIOS) {
    //   // IOS Intent to Map Apps
    //   //   "comgooglemaps://?center=40.765819,-73.975866&zoom=14&views=traffic"
    //   Uri.parse(
    //       'comgooglemaps://?saddr=Google+Inc,+8th+Avenue,+New+York,+NY&daddr=John+F.+Kennedy+International+Airport,+Van+Wyck+Expressway,+Jamaica,+New+York&directionsmode=transit');
    // } else {
    //   // Other OS Intent to Map Apps
    // }
  }
}
