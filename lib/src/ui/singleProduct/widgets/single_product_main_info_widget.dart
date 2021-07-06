// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:jeanswest/src/models/api_response/productRes/single-product-info-res.dart';
import 'package:jeanswest/src/ui/singleProduct/widgets/SingleProductMainInfo/single_product_image_in_body_widget.dart';
import 'package:jeanswest/src/ui/singleProduct/widgets/SingleProductMainInfo/single_product_title_widget.dart';

class SingleProductMainInfoWidget extends StatefulWidget {
  final SingleProductInfoRes product;
  final bool isFave;
  final Function(bool) changeFave;
  final Function() openExistInBranches;
  const SingleProductMainInfoWidget({
    Key key,
    @required this.product,
    @required this.isFave,
    @required this.changeFave,
    @required this.openExistInBranches,
  }) : super(key: key);
  @override
  _SingleProductMainInfoWidgetState createState() =>
      _SingleProductMainInfoWidgetState();
}

class _SingleProductMainInfoWidgetState
    extends State<SingleProductMainInfoWidget> {
  ScrollController scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Container(
        // color: Colors.red,
        // height: _screenSize.height,
        width: _screenSize.width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(children: [
            SingleProductImageInBodyWidget(
              screenSize: _screenSize,
              images: widget.product.banimodeDetails.images.thickboxDefault,
              linkProductForShare: 'تستیییی',
              isFave: widget.isFave,
              changeFave: (bool newIsFave) => widget.changeFave(newIsFave),
            ),
            SingleProductTitleWidget(
              brand: widget.product.banimodeDetails.productManufacturerEnName,
              fullName: widget.product.banimodeDetails.productName,
              price: widget.product.salePrice,
              openExistInBranches: () => widget.openExistInBranches(),
            ),
          ]),
        ));
  }
}
