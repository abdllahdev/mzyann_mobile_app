import 'package:flutter/material.dart';


class CustomDropdownButton extends StatelessWidget {
  final String value;
  final List<DropdownMenuItem> items;
  final Function onChange;
  final TextStyle textStyle;
  final String hintText;
  final TextStyle hintStyle;
  final Icon icon;

  const CustomDropdownButton({
    this.value,
    this.items,
    this.textStyle,
    this.onChange(item),
    this.hintText,
    this.icon,
    this.hintStyle
  });

  static Widget buildDropdownMenuItem(String value, String text, double width) {
    return new DropdownMenuItem(
        value: value,
        child: Container(
          width: width,
          child: Text(text)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        icon,
        new Padding(
          padding: const EdgeInsets.only(right: 15.0)
        ),
        new DropdownButton(
          value: value,
          items: items,
          onChanged: onChange,
          style: textStyle,
          hint: Text(
            hintText,
            style: hintStyle
          ),
        )
      ]
    );
  }
}
