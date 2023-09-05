// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metabase_admin_ipad/helper/constant.dart';
import 'package:metabase_admin_ipad/helper/dimensions.dart';

class TextLabelWithTextfield extends StatelessWidget {
  final String textLabel;
  final int? minLines;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool? enabled;
  Widget? suffixIcon;
  bool obscureText;
  TextLabelWithTextfield(
      {super.key,
      required this.textLabel,
      this.minLines,
      required this.hintText,
      this.inputFormatters,
      this.validator,
      required this.textEditingController,
      this.keyboardType,
      this.onChanged,
      this.enabled,
      this.suffixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            textLabel,
            style: blackStyle(fontSize: 'subtitle1', type: 'body'),
          ),
        ),
        Expanded(
            flex: 3,
            child: TextFormField(
              enabled: enabled,
              onChanged: onChanged,
              controller: textEditingController,
              validator: validator,
              inputFormatters: inputFormatters,
              obscureText: obscureText,
              maxLines: minLines ?? 1,
              minLines: minLines ?? 1,
              keyboardType: keyboardType,
              scrollPadding: EdgeInsets.zero,
              decoration: InputDecoration(
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                  suffixIcon: suffixIcon,
                  errorBorder: errorBorder,
                  hintText: hintText,
                  hintStyle: greyStyle(fontSize: 'subtitle1', type: 'body'),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: width08 * 2, vertical: height24 / 4)),
              style: blackStyle(fontSize: 'subtitle1', type: 'body'),
            )),
      ],
    );
  }
}
