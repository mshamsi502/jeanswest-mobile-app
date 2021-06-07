import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jeanswest/src/constants/global/constValues/constants.dart';
import 'package:jeanswest/src/constants/global/constValues/route_names.dart';
import 'package:jeanswest/src/services/navigation_service.dart';

class PushNotificationService {
  // ignore: deprecated_member_use
  final FirebaseMessaging _fcm = FirebaseMessaging();
  final NavigationService _navigationService =
      globalLocator<NavigationService>();

  Future initialise() async {
    if (Platform.isIOS) {
      // request permissions if we're on android
      // ignore: deprecated_member_use
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }



    // _fcm.configure(
    //   // Called when the app is in the foreground and we receive a push notification
    //   onMessage: (Map<String, dynamic> message) async {
    //     print('onMessage: $message');
    //   },
    //   // Called when the app has been closed comlpetely and it's opened
    //   // from the push notification.
    //   onLaunch: (Map<String, dynamic> message) async {
    //     print('onLaunch: $message');
    //     _serialiseAndNavigate(message);
    //   },
    //   // Called when the app is in the background and it's opened
    //   // from the push notification.
    //   onResume: (Map<String, dynamic> message) async {
    //     print('onResume: $message');
    //     _serialiseAndNavigate(message);
    //   },
    // );
  }

  // ignore: unused_element
  void _serialiseAndNavigate(Map<String, dynamic> message) {
    var notificationData = message['data'];
    var view = notificationData['view'];

    if (view != null) {
      // Navigate to the create post view
      if (view == 'create_post') {
        _navigationService.navigateTo(CreatePostViewRoute);
      }
    }
  }
}