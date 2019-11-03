import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final TextStyle textStyle;
  final Icon icon;
  final String labelText;
  final TextStyle labelStyle;
  final GlobalKey mainKey;


  const CustomTextField({
    this.icon,
    this.labelStyle,
    this.labelText,
    this.textStyle,
    this.mainKey
  });

  @override
  Widget build(BuildContext context) {
    return new TextField(
      key: mainKey,
      style: textStyle,
      maxLines: 1,
      autofocus: false,
      cursorColor: Colors.green,
      decoration: new InputDecoration(
        icon: icon,
        contentPadding: const EdgeInsets.all(0.0),
        labelText: labelText,
        labelStyle: labelStyle,
        enabledBorder: new UnderlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.grey[300]
          ),
        )
      ),

    );
  }
}
