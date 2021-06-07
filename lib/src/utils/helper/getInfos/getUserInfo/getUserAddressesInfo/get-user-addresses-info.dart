//

import 'package:flutter/cupertino.dart';
import 'package:jeanswest/src/constants/global/constValues/constants.dart';
import 'package:jeanswest/src/models/api_response/globalRes/address/city/city.dart';
import 'package:jeanswest/src/models/api_response/globalRes/address/district/district.dart';
import 'package:jeanswest/src/models/api_response/globalRes/address/province/province.dart';
import 'package:jeanswest/src/models/api_response/globalRes/general_response.dart';
import 'package:jeanswest/src/models/api_response/userRes/userAddresses/address-info-res.dart';
import 'package:jeanswest/src/models/api_response/userRes/userAddresses/user-addresses-info-res.dart';
import 'package:jeanswest/src/services/jeanswest_apis/rest_client_global.dart';
import 'package:jeanswest/src/utils/helper/global/helper.dart';

// ignore: missing_return
Future<List<AddressInfoRes>> userAddressesInfo() async {
  UserAddressesInfoRes addRes;
  try {
    addRes = await globalLocator<GlobalRestClient>()
        .getUserAddressesInfo(); // ! from real API

  } catch (errorRealAPI) {
    print('Catch Error from ** Real API ** !');
    printErrorMessage(errorRealAPI);
    try {
      addRes = await globalLocator<GlobalRestClient>()
          .getMockUserAddressesInfo(); // ! from mockoon
    } catch (errorMockoon) {
      print('Catch Error from ** Mockoon ** !');
      printErrorMessage(errorMockoon);
    }
  }
  if (addRes != null && addRes.statusCode == 200) {
    print('_=_ get successfully, userAddresses length: ${addRes.data.length}');
    if (addRes.data.length > 0) {
      print(
          '_=_ get successfully, userAddresses first: ${addRes.data[0].address}');
    }
    return addRes.data;
  }
}

Future<bool> addToUserAddresses({
  @required String recieverFullName,
  @required String receiverMobile,
  @required Province province,
  @required City city,
  @required District district,
  @required String address,
  @required String houseNumber,
  @required String unitNumber,
  @required String postalCode,
  @required double latitude,
  @required double longitude,
  @required bool isUser,
  @required String title,
}) async {
  // userAddresses

  Map<String, dynamic> newAddress = {
    "recieverFullName": recieverFullName,
    "receiverMobile": receiverMobile,
    "province": province,
    "city": city,
    "district": district ?? District(),
    "address": address,
    "houseNumber": houseNumber,
    "unitNumber": unitNumber,
    "postalCode": postalCode,
    "latitude": latitude,
    "longitude": longitude,
    "isUser": isUser ?? "",
    "title": title ?? ""
  };
  try {
    GeneralRespons gRes = await globalLocator<GlobalRestClient>()
        .addToUserAddressesInfo(newAddress); // ! from real API
    // !
    // await globalLocator<GlobalRestClient>()
    //     .getMockUserAddressesInfo(); // ! from Mockoon
    // !
    if (gRes.statusCode == 200) {
      return true;
    } else {
      print(gRes.message);
      return false;
    }
  } catch (e) {
    printErrorMessage(e);
    return false;
  }
}

Future<bool> editUserAddresses({
  @required AddressInfoRes oldAddress,
  @required String recieverFullName,
  @required String receiverMobile,
  // @required String country,
  @required String province,
  @required String city,
  @required String district,
  @required String address,
  @required String houseNumber,
  @required String unitNumber,
  @required String postalCode,
  @required double latitude,
  @required double longitude,
  // @required bool isUser,
  // @required String title,
}) async {
  final Map<String, dynamic> newAddress = Map<String, dynamic>();
  newAddress['code'] = oldAddress.code;
  if (oldAddress.recieverFullName != recieverFullName)
    newAddress['recieverFullName'] = recieverFullName ?? "";

  if (oldAddress.receiverMobile != receiverMobile)
    newAddress['receiverMobile'] = receiverMobile ?? "";
  // if (oldAddress.country != country) newAddress['country'] = country ?? "";
  if (oldAddress.province.name != province)
    newAddress['province'] = Province(name: province ?? "");
  if (oldAddress.city.name != city) newAddress['city'] = City(name: city ?? "");
  if (oldAddress.district.name != district)
    newAddress['district'] = District(name: district ?? '');
  if (oldAddress.address != address) newAddress['address'] = address ?? "";
  if (oldAddress.houseNumber != houseNumber)
    newAddress['houseNumber'] = houseNumber ?? "";
  if (oldAddress.unitNumber != unitNumber)
    newAddress['unitNumber'] = unitNumber ?? "";
  if (oldAddress.postalCode != postalCode)
    newAddress['postalCode'] = postalCode ?? "";
  if (oldAddress.latitude != latitude) newAddress['latitude'] = latitude ?? "";
  if (oldAddress.longitude != longitude)
    newAddress['longitude'] = longitude ?? "";
  // if (oldAddress.isUser != isUser) newAddress['isUser'] = isUser ?? "";
  // if (oldAddress.title != title) newAddress['title'] = title ?? "";
  print(newAddress);
  try {
    GeneralRespons gRes = await globalLocator<GlobalRestClient>()
        .editUserAddressesInfo(newAddress); // ! from real API

    // !
    // await globalLocator<GlobalRestClient>()
    //     .getMockUserAddressesInfo(); // ! from Mockoon
    // !
    if (gRes.statusCode == 200) {
      print('send success.....................');
      return true;
    } else {
      print(gRes.message);
      return null;
    }
  } catch (e) {
    printErrorMessage(e);
    return null;
  }
}

Future<bool> deleteUserAddresses({@required String code}) async {
  Map<String, dynamic> deletedAddress = {"code": code};

  try {
    GeneralRespons gRes = await globalLocator<GlobalRestClient>()
        .deleteUserAddressesInfo(deletedAddress); // ! from real API
    // !
    // await globalLocator<GlobalRestClient>()
    //     .getMockUserAddressesInfo(); // ! from Mockoon
    // !
    if (gRes.statusCode == 200) {
      print('delete success.....................');
      return true;
    } else {
      print(gRes.message);
      return null;
    }
  } catch (e) {
    printErrorMessage(e);
    return null;
  }
}