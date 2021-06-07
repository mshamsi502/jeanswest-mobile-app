// !  *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// ! *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// ! *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ! ****************************************************************************

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jeanswest/src/constants/global/globalInstances/userAllInfo/user-tickets-info.dart';
import 'package:jeanswest/src/models/api_response/userRes/userTickets/dataTickets/data-ticket.dart';
import 'package:jeanswest/src/ui/profile/screens/more_menu_list/about_us_page.dart';
import 'package:jeanswest/src/ui/profile/screens/more_menu_list/return_process_page.dart';
import 'package:jeanswest/src/ui/profile/screens/more_menu_list/support_page.dart';

import 'package:jeanswest/src/constants/global/globalInstances/about-us-data.dart';
import 'package:jeanswest/src/constants/global/globalInstances/return-policy-data.dart';

import 'svg_images/profile_svg_images.dart';

List<String> mainProfileListTitles = [
  "profile_screen.jean_points_and_coupons".tr(),
  "profile_screen.my_orders".tr(),
  "profile_screen.favourite_list".tr(),
  "profile_screen.my_addresses".tr(),
  // "profile_screen.friends".tr(),
  "profile_screen.info_account".tr(),
  "profile_screen.exit_from_account".tr(),
];
//
List<Widget> mainProfileListIcons = [
  ProfileSvgImages.largeGiftIcon,
  ProfileSvgImages.myOrdersIcon,
  ProfileSvgImages.favoriteIcon,
  ProfileSvgImages.addressesIcon,
  // ProfileSvgImages.friendsIcon,
  ProfileSvgImages.profileIcon,
  ProfileSvgImages.exitIcon,
];
//
List<String> moreListTitles = [
  "profile_screen.support".tr(),
  "profile_screen.about_us".tr(),
  "profile_screen.return_procedure".tr(),
];
//
List<Widget> moreListIcons = [
  // Icons.support_agent_outlined,
  ProfileSvgImages.supportIcon,
  // Icons.info_outline,
  ProfileSvgImages.aboutUsIcon,
  // Icons.accessible_outlined,
  ProfileSvgImages.backBuyingIcon,
];
//
// List<Widget> moreListWidgets = [
//   // Container(),
//   SupportPage(
//     userTickets: userTickets,
//     updateUserTickets: (List<DataTicket> tickets) => userTickets = tickets,
//   ),
//   // Container(),
//   AboutUsPage(
//     aboutUsData: aboutUsData,
//   ),
//   // Container(),
//   ReturnProcessPage(
//     initialTab: 0,
//     returnProciyData: returnPolicyData,
//   ),
// ];

List<Widget> createMorePages({
  BuildContext context,
  Function(List<DataTicket>) updateUserTickets,
}) {
  // ignore: deprecated_member_use
  List<Widget> morePages = new List<Widget>();
  morePages.add(SupportPage(
    userTickets: userTickets,
    updateUserTickets: updateUserTickets,
  ));
  morePages.add(
    AboutUsPage(
      aboutUsData: aboutUsData,
    ),
  );
  morePages.add(ReturnProcessPage(
    initialTab: 0,
    returnProciyData: returnPolicyData,
  ));
  return morePages;
}
