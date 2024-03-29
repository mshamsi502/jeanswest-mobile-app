// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class GlobalSvgImages {
  GlobalSvgImages._();

  //
  // -----------------------------------------------------
  //

  static Widget rightIcon = SvgPicture.asset(
    'assets/images/svg_images/global/back_icon.svg',
    // color: MAIN_BLUE_COLOR,
    width: 20,
    height: 20,
  );

  static Widget leftIcon = RotatedBox(
    quarterTurns: -2,
    child: SvgPicture.asset(
      'assets/images/svg_images/global/back_icon.svg',
      // color: MAIN_BLUE_COLOR,
      width: 20,
      height: 20,
    ),
  );

  static Widget closeIcon = SvgPicture.asset(
    'assets/images/svg_images/global/close_icon.svg',
    color: MAIN_BLUE_COLOR,
    width: 20,
    height: 20,
  );

  static Widget greyClearTextFieldIcon = SvgPicture.asset(
    'assets/images/svg_images/global/grey_clear_text_field_icon.svg',
    width: 14,
    height: 14,
  );
  static Widget whiteClearTextFieldIcon = SvgPicture.asset(
    'assets/images/svg_images/global/white_clear_text_field_icon.svg',
    width: 14,
    height: 14,
  );

  static Widget shareIcon = SvgPicture.asset(
    'assets/images/svg_images/global/share_icon.svg',
    color: MAIN_BLUE_COLOR,
    height: 20,
    width: 20,
  );

  static Widget searchIcon = SvgPicture.asset(
    'assets/images/svg_images/global/search_icon.svg',
    color: MAIN_BLUE_COLOR,
    width: 20,
    height: 20,
  );

  static Widget svgArrowTop = SvgPicture.asset(
    "assets/images/svg_images/global/arrow_top_icon.svg",
    height: 10,
    color: Colors.grey[700],
  );
  static Widget svgArrowBottom = RotatedBox(
    quarterTurns: -2,
    child: SvgPicture.asset(
      "assets/images/svg_images/global/arrow_top_icon.svg",
      height: 10,
      color: Colors.grey[700],
    ),
  );
  static Widget editIconForLeft = SvgPicture.asset(
    'assets/images/svg_images/global/edit_icon.svg',
    color: MAIN_BLUE_COLOR,
    // height: 20,
    // width: 20,
  );
  static Widget editIconForRight = RotatedBox(
    quarterTurns: -3,
    child: SvgPicture.asset(
      'assets/images/svg_images/global/edit_icon.svg',
      color: MAIN_BLUE_COLOR,
      // height: 20,
      // width: 20,
    ),
  );

  //
  // -----------------------------------------------------
  //

  static Widget greenTickIcon = SvgPicture.asset(
    'assets/images/svg_images/global/green_tick.svg',
  );
  static Widget greyTickIcon = SvgPicture.asset(
    'assets/images/svg_images/global/grey_tick.svg',
  );
  static Widget loadingIcon = SvgPicture.asset(
    'assets/images/svg_images/global/loading.svg',
  );

  static Widget blueTimeIcon = SvgPicture.asset(
    'assets/images/svg_images/global/time_icon.svg',
    color: MAIN_BLUE_COLOR,
    height: 15,
    width: 15,
  );

  static Widget redTimeIcon = SvgPicture.asset(
    'assets/images/svg_images/global/time_icon.svg',
    color: Color(0xffFF1717),
    height: 15,
    width: 15,
  );
  static Widget greyTimeIcon = SvgPicture.asset(
    'assets/images/svg_images/global/time_icon.svg',
    color: Colors.grey,
    height: 12,
    width: 12,
  );

  //
  // -----------------------------------------------------
  //
  static Widget emptyBox = SvgPicture.asset(
    'assets/images/svg_images/global/empty_box.svg',
    // height: 60,
    // width: 60,
  );
}
