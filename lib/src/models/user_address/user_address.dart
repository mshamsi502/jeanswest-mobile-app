// *   Created By :  Mohammad Shamsi    *|*    Email :  mshamsi502@gmail.com
// *   Project Name :  avakatan_profile
// *   Created Date & Time :  2020-11-25  ,  02:36 PM
// ****************************************************************************

// ignore: must_be_immutable

import 'package:flutter/cupertino.dart';

class UserAddress {
  final String titleAddress;
  final String name;
  final String mobilePhoneNumber;
  final String homePhoneNumber;
  final String stateAddress;
  final String cityAddress;
  final String blockAddress;
  final String postCode;
  final String postAddress;
  final String explain;

  UserAddress({
    @required this.name,
    @required this.mobilePhoneNumber,
    this.homePhoneNumber,
    @required this.stateAddress,
    @required this.cityAddress,
    @required this.blockAddress,
    @required this.postCode,
    @required this.postAddress,
    this.titleAddress,
    this.explain,
  });
}
