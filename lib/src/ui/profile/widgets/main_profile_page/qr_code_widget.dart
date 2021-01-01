//*  Created By:    Mohammad Shamsi        //*  Email:  mshamsi502@gmail.com
//*  Project Name:  avakatan_branches
//*  Created on:    7th October - 07/10/2020     _     15:23:37
//****************************************************************************

import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeanswest/src/constants/test_data/user.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeWidget extends StatefulWidget {
  State<StatefulWidget> createState() => _QrCodeWidgetState();
}

class _QrCodeWidgetState extends State<QrCodeWidget> {
  Uint8List bytes = Uint8List(0);

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Container(
        height: 0.33 * _screenSize.width, // 120
        width: 0.33 * _screenSize.width, // 120,
        // color: Colors.grey,
        child: QrImage(
          data: 'jeanswest.ir/user/${user.phoneNumber}',
          version: QrVersions.auto,
          size: 0.416 * _screenSize.width, //  150,
          gapless: true,
          embeddedImage: AssetImage(
              'assets/images/png_images/global/jeanswest_icon_black.png'),
          embeddedImageEmitsError: true,
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: Size(
                0.083 * _screenSize.width, 0.083 * _screenSize.width), // 30 ,30
          ),
        ),
      ),
    );
  }
}
