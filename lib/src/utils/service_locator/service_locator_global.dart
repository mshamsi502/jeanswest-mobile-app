// // *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// // *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// // *   Created Date & Time:  2021-01-01  ,  10:00 AM
// // ****************************************************************************

import 'package:dio/dio.dart';
import 'package:jeanswest/src/services/global/rest_client_global.dart';
import 'package:jeanswest/src/constants/global/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setupLocator2() async {
  globalLocator.registerSingletonAsync<SharedPreferences>(() async {
    final localStorageService = SharedPreferences.getInstance();
    return localStorageService;
  });

  globalLocator.registerFactoryParam<GlobalRestClient, String, void>(
      (String baseUrl, _) {
    Dio dio = new Dio();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      // locator<SharedPreferences>().setString(TOKEN,
      //     "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjQ5MTQ5IiwidXVpZCI6InB3YS11dWlkIiwidXNlcl9pZCI6IjY2MjY4IiwiY3JlYXRlZF9hdCI6IjIwMjAtMDgtMTMgMjM6MTg6NDkiLCJ1cGRhdGVkX2F0IjoiMjAyMC0wOC0xMyAyMzo0Mzo0OCIsImV4cGlyZWRfYXQiOiIyMDIxLTA5LTI0IDEyOjQ4OjI1IiwiaXNfZXhwaXJlZCI6IjAiLCJub3RpZmljYXRpb25faWQiOiJlc1VnZW5EMVpua193ZThuRDM2b3ZWOkFQQTkxYkhBOVZBUklHNk1jdHlyeHZvTGlYUGM5c2pBWWNraDRTVHd6bDlRb2hfRjVTZHpRaVNMV1Ixeks3LUlUeWFFQ3YweXZvdmFOUEFOTUxjbzR0Zmx4R245SThtUWVnZ2RzaC04UTYxaW1GdXhQVTZjN2pFQUdNcXU5M3dBaGR0d1lDdm9xRHJNIiwiaXNfcHdhIjoiMSJ9.C_R_tZxIUATGq1dwtJES9EY9ce0mjJHzOuRZStgFBGg");
      if (globalLocator<SharedPreferences>().getString(TOKEN) != null) {
        options.headers["Authorization"] =
            "Bearer " + globalLocator<SharedPreferences>().getString(TOKEN);
      }
      // Do something before request is sent
      return options; //continue
      // If you want to resolve the request with some custom data，
      // you can return a `Response` object or return `dio.resolve(data)`.
      // If you want to reject the request with a error message,
      // you can return a `DioError` object or return `dio.reject(errMsg)`
    }, onResponse: (Response response) async {
      // Do something with response data
      return response; // continue
    }, onError: (DioError e) async {
      // Do something with response error
      return e; //continue
    }));
    final client = GlobalRestClient(dio, baseUrl: baseUrl);
    return client;
  });
}
