import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btName;
  final Icon? iconName;
  final Color? colorName;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  CustomButton(
      {required this.btName,
      this.iconName,
      this.colorName = Colors.black54,
      this.callback,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: iconName != null
            ? Container(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconName!,
                    SizedBox(width: 10),
                    Text(
                      btName,
                      style: textStyle,
                    ),
                  ],
                ))
            : Text(btName, style: textStyle),
        style: ElevatedButton.styleFrom(
            backgroundColor: colorName,
            shadowColor: colorName,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)))));
  }
}
