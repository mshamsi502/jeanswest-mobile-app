// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:jeanswest/src/utils/helper/global/convertation-helper.dart';

class UserMainInfo {
  @required
  String code;
  @required
  String tblPosCustomersID;
  @required
  String firstName;
  @required
  String lastName;
  @required
  String email;
  @required
  String phoneNumber;
  @required
  int gender;
  @required
  String dayOfBirthGeo;
  @required
  String monthOfBirthGeo;
  @required
  String yearOfBirthGeo;
  String dayOfBirthShamsi;
  String monthOfBirthShamsi;
  String yearOfBirthShamsi;
  //

  UserMainInfo({
    this.code,
    this.tblPosCustomersID,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.gender,
    this.dayOfBirthGeo,
    this.monthOfBirthGeo,
    this.yearOfBirthGeo,
    this.dayOfBirthShamsi,
    this.monthOfBirthShamsi,
    this.yearOfBirthShamsi,
  }) {
    Map<String, String> shamsiDate = gregorianToShamsi({
      "year": yearOfBirthGeo,
      "month": monthOfBirthGeo,
      "day": dayOfBirthGeo,
    });
    yearOfBirthShamsi = shamsiDate["year"];
    monthOfBirthShamsi = shamsiDate["month"];
    dayOfBirthShamsi = shamsiDate["day"];
  }
}
