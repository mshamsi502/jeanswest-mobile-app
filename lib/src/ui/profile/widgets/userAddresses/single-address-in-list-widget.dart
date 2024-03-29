import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jeanswest/src/constants/global/colors.dart';
import 'package:jeanswest/src/models/address/address.dart';
import 'package:jeanswest/src/ui/global/widgets/avakatan_button_widget.dart';

class SingleAddressInListWidget extends StatefulWidget {
  final Address address;
  final int indexAddress;
  final int selected;
  final Function(int) changeSelected;
  final Function(int) editAddress;
  SingleAddressInListWidget({
    Key key,
    this.address,
    this.indexAddress,
    this.selected,
    this.changeSelected,
    this.editAddress,
  }) : super(key: key);

  @override
  _SingleAddressInListWidgetState createState() =>
      _SingleAddressInListWidgetState();
}

class _SingleAddressInListWidgetState extends State<SingleAddressInListWidget> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(
        0.027 * _screenSize.width, //10,
      ),
      width: _screenSize.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 0.083 * _screenSize.width, //30,
              alignment: Alignment.topCenter,
              child: Container(
                height: 0.0506 * _screenSize.height, //30,
                child: Transform.scale(
                  scale: _screenSize.width / 360,
                  child: Radio(
                    value: widget.indexAddress,
                    groupValue: widget.selected,
                    activeColor: MAIN_BLUE_COLOR,
                    onChanged: (int value) {
                      widget.changeSelected(value);
                    },
                  ),
                ),
              )),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    widget.address.address,
                    style: TextStyle(
                      fontSize: 0.038 * _screenSize.width, //12,
                    ),
                  ),
                ),
                SizedBox(height: 0.0078 * _screenSize.height //5,
                    ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_road_outlined,
                      color: Colors.grey,
                      size: 0.05 * _screenSize.width, //18,
                    ),
                    SizedBox(
                      width: 0.041 * _screenSize.width, //15,
                    ),
                    // Expanded(
                    //   child:
                    Text(
                      "${widget.address.province}، ${widget.address.city}، ${widget.address.district}",
                      style: TextStyle(
                        fontSize: 0.034 * _screenSize.width, //12,
                      ),
                    ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 0.0046 * _screenSize.height, //3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                      size: 0.05 * _screenSize.width, //18,
                    ),
                    SizedBox(
                      width: 0.041 * _screenSize.width, //15,
                    ),
                    Expanded(
                        child: Text(
                      "${widget.address.postalCode}",
                      style: TextStyle(
                        fontSize: 0.034 * _screenSize.width, //12,
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 0.0046 * _screenSize.height, //3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.grey,
                      size: 0.05 * _screenSize.width, //18,
                    ),
                    SizedBox(
                      width: 0.041 * _screenSize.width, //15,
                    ),
                    Expanded(
                        child: Text(
                      "${widget.address.recieverMobile}",
                      style: TextStyle(
                        fontSize: 0.034 * _screenSize.width, //12,
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 0.0046 * _screenSize.height, //3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 0.05 * _screenSize.width, //18,
                    ),
                    SizedBox(
                      width: 0.041 * _screenSize.width, //15,
                    ),
                    Expanded(
                        child: Text(
                      "${widget.address.recieverFirstName} ${widget.address.recieverLastName}",
                      style: TextStyle(
                        fontSize: 0.034 * _screenSize.width, //12,
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 0.0078 * _screenSize.height //5,
                    ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            Text(
                              "ویرایش آدرس",
                              style: TextStyle(
                                fontSize: 0.036 * _screenSize.width, //13,
                                color: MAIN_BLUE_COLOR,
                              ),
                            ),
                            SizedBox(
                              width: 0.0138 * _screenSize.width, //5,
                            ),
                            Icon(
                              Icons.arrow_back_ios_rounded,
                              color: MAIN_BLUE_COLOR,
                              size: 0.041 * _screenSize.width, //15,
                            ),
                          ],
                        ),
                        onTap: () {
                          widget.editAddress(widget.indexAddress);
                          // ! edit Address
                          print("editting address");
                        },
                      ),
                    ),
                    SizedBox(
                      width: 0.138 * _screenSize.width, //50,
                    ),
                    AvakatanButtonWidget(
                      hasShadow: true,
                      backgroundColor: Colors.white,
                      borderColor: Colors.grey[200],
                      radius: 0.138 * _screenSize.width, //50,
                      height: 0.09722 * _screenSize.width, //35,
                      width: 0.09722 * _screenSize.width, //35,
                      icon: Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.amber,
                        size: 0.06388 * _screenSize.width, //23,
                      ),
                      onTap: () {
                        // ! delete Address
                        print('deleting address');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
