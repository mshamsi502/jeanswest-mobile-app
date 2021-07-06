// *   Created By:  Mohammad Shamsi    *|*    Email:  mshamsi502@gmail.com
// *   Project Name:  mobile_jeanswest_app_android    *|*    App Name: Jeanswest
// *   Created Date & Time:  2021-01-01  ,  10:00 AM
// ****************************************************************************

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jeanswest/src/constants/global/constValues/colors.dart';
import 'package:jeanswest/src/constants/global/constValues/constants.dart';

import 'package:jeanswest/src/utils/helper/global/helper.dart';

class SingleProductImageInBodyWidget extends StatefulWidget {
  final List<String> images;
  final String linkProductForShare;
  final bool isFave;
  final Function(bool) changeFave;
  final Size screenSize;
  const SingleProductImageInBodyWidget({
    Key key,
    @required this.screenSize,
    @required this.images,
    @required this.linkProductForShare,
    @required this.isFave,
    @required this.changeFave,
  }) : super(key: key);
  @override
  _SingleProductImageInBodyWidgetState createState() =>
      _SingleProductImageInBodyWidgetState();
}

class _SingleProductImageInBodyWidgetState
    extends State<SingleProductImageInBodyWidget> {
  ScrollController scrollController = new ScrollController();
  ScrollController circleOptCarouselController = new ScrollController();
  CarouselController carouselController = CarouselController();
  List<Widget> imageItemWidget = [];
  //
  int selectedImage = 0;
  bool tempIsFav;

  @override
  void initState() {
    widget.images.forEach((image) {
      imageItemWidget.add(GestureDetector(
        child: Container(
          width: widget.screenSize.width,
          // color: Colors.amber,
          child: Image.network(
            image ?? EMPTY_IMAGE,
            fit: BoxFit.fitWidth,
          ),
        ),
      ));
    });
    tempIsFav = widget.isFave;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 430,
                    viewportFraction: 1,
                    initialPage: selectedImage,
                    enableInfiniteScroll: false,
                    onPageChanged:
                        (int index, CarouselPageChangedReason reason) {
                      setState(() {
                        selectedImage = index;
                      });
                    },
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 6),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imageItemWidget,
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: GestureDetector(
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 0.02,
                              color: Colors.grey[300],
                            )
                          ]),
                      padding: EdgeInsets.all(9),
                      child: SvgPicture.asset(
                        tempIsFav
                            ? 'assets/images/svg_images/global/new/heart-fill.svg'
                            : 'assets/images/svg_images/global/new/heart.svg',
                        color: tempIsFav ? MAIN_BLUE_COLOR : Colors.grey,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    onTap: () {
                      // TODO : send to api
                      setState(() {
                        tempIsFav = !tempIsFav;
                      });
                      widget.changeFave(!widget.isFave);
                    }),
              ),
              Positioned(
                bottom: 70,
                right: 15,
                child: GestureDetector(
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 0.02,
                            color: Colors.grey[300],
                          )
                        ]),
                    padding: EdgeInsets.all(11),
                    child: SvgPicture.asset(
                      'assets/images/svg_images/global/new/fi-rr-share.svg',
                      color: Colors.grey,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  onTap: () => shareATextLink(widget.linkProductForShare),
                ),
              ),
              Positioned(
                bottom: 15,
                child: Container(
                  height: 12,
                  width: _screenSize.width,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      itemCount: widget.images.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      controller: circleOptCarouselController,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: selectedImage == index
                              ? 8
                              : selectedImage - index == 1 ||
                                      index - selectedImage == 1
                                  ? 5.5
                                  : 4,
                          height: selectedImage == index
                              ? 8
                              : selectedImage - index == 1 ||
                                      index - selectedImage == 1
                                  ? 5.5
                                  : 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedImage == index
                                ? Colors.grey[700]
                                : selectedImage - index == 1 ||
                                        index - selectedImage == 1
                                    ? Colors.black26
                                    : Colors.black12,
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 3.5,
                              vertical: selectedImage == index
                                  ? 2
                                  : selectedImage - index == 1 ||
                                          index - selectedImage == 1
                                      ? 3.25
                                      : 4),
                        );
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
