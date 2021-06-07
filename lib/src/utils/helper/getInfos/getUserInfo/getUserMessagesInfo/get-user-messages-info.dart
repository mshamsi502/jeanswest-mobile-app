//

import 'package:flutter/cupertino.dart';
import 'package:jeanswest/src/constants/global/constValues/constants.dart';
import 'package:jeanswest/src/models/api_response/userRes/userMessage/user-message-res.dart';
// import 'package:jeanswest/src/models/api_response/userRes/userMessages/user-messages-info-res.dart';

// import 'package:jeanswest/src/models/profile/message/single-message.dart';
import 'package:jeanswest/src/services/jeanswest_apis/rest_client_global.dart';
// import 'package:jeanswest/src/utils/helper/global/helper.dart';

// Future<void> userMessagesInfo() async {
//   UserMessagesInfoRes res =
//       await globalLocator<GlobalRestClient>().getUserMessagesInfo();
//   // ignore: deprecated_member_use
//   userMessages = new List<SingleMessage>();
//   res.data.forEach((message) {
//     userMessages.add(SingleMessage(
//       code: message.code,
//       engTitle: message.engTitle,
//       perTitle: message.perTitle,
//       engSender: message.engSender,
//       perSender: message.perSender,
//       pictureAssets: message.pictureAssets,
//       text: message.text,
//       description: message.description,
//       price: message.price,
//       minShopping: message.minShopping,
//       perCategory: message.perCategory,
//       engCategory: message.engCategory,
//       startDate: message.startDate,
//       endDate: message.endDate,
//       sendDate: message.sendDate,
//     ));
//   });

//   print('_=_ get successfully, userMessages length: ${userMessages.length}');
//   print(
//       '_=_ get successfully, first userMessages code: ${userMessages[0].code}');
// }
Future<Map<String, dynamic>> userMessagesInfo(
    {@required Map<String, dynamic> body}) async {
  UserMessageRes res =
      await globalLocator<GlobalRestClient>().getUserMessagesInfo(body);
  //  UserMessageRes res =
  //     await globalLocator<GlobalRestClient>().getMockUserMessagesInfo();

  return {
    "total": res.data.total,
    "currentPage": (body["option"]["page"]["eq"]),
    "messages": res.data.result,
  };
}