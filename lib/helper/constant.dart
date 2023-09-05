import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/helper/dimensions.dart';

IconData logOutIcon = Icons.power_settings_new_rounded;

double getFontSize(String type) {
  switch (type) {
    case 'body1':
      return width24 / 2;
    case 'body2':
      return width24 - width10;
    case 'body3':
      return width08 * 2;
    case 'subtitle1':
      return width10 + width08;
    case 'subtitle2':
      return width20;
    case 'subtitle3':
      return width20 + width08 / 4;
    case 'title1':
      return width24;
    case 'title2':
      return width08 * 2 + width10;
    case 'title3':
      return width08 + width20;
    default:
      return width24 / 2;
  }
}

FontWeight getFontWeight(String type) {
  switch (type) {
    case 'subtitle':
      return FontWeight.w600;
    case 'title':
      return FontWeight.w700;
    case 'body':
      return FontWeight.w400;
    default:
      return FontWeight.normal;
  }
}

String getFontFamily(String type) {
  switch (type) {
    case 'subtitle':
      return 'SF Pro Text';
    case 'title':
      return 'SF Pro Display';
    case 'body':
      return 'SF Pro Text';
    default:
      return 'SF Pro Text';
  }
}

//textStyle
TextStyle blackStyle({required String fontSize, required String type}) =>
    TextStyle(
      color: const Color(0xFF0F1728),
      fontSize: getFontSize(fontSize),
      fontFamily: getFontFamily(type),
      fontWeight: getFontWeight(type),
      letterSpacing: -0.40,
    );
TextStyle greyStyle({required String fontSize, required String type}) =>
    TextStyle(
      color: const Color(0xFF667085),
      fontSize: getFontSize(fontSize),
      fontWeight: getFontWeight(type),
      fontFamily: getFontFamily(type),
      letterSpacing: -0.40,
    );
TextStyle greenStyle({required String fontSize, required String type}) =>
    TextStyle(
      color: const Color(0xFF34C759),
      fontSize: getFontSize(fontSize),
      fontWeight: getFontWeight(type),
      fontFamily: getFontFamily(type),
      letterSpacing: -0.40,
    );
TextStyle redStyle({required String fontSize, required String type}) =>
    TextStyle(
      color: const Color(0xFFFF3B30),
      fontSize: getFontSize(fontSize),
      fontWeight: getFontWeight(type),
      fontFamily: getFontFamily(type),
      letterSpacing: -0.40,
    );
TextStyle blueStyle({required String fontSize, required String type}) =>
    TextStyle(
      color: const Color(0xFF007AFF),
      fontSize: getFontSize(fontSize),
      fontWeight: getFontWeight(type),
      fontFamily: getFontFamily(type),
      letterSpacing: -0.40,
    );
TextStyle whiteNotificationNumber = TextStyle(
  color: Colors.white,
  fontSize: width10 * 0.9,
  fontFamily: 'SF Pro Text',
  letterSpacing: -0.40,
);

//BorderStyle
OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(height08),
    borderSide: const BorderSide(
      color: Color(0xFF007AFF),
      strokeAlign: BorderSide.strokeAlignOutside,
    ));
OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(height08), borderSide: BorderSide.none);
OutlineInputBorder errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(height08),
  borderSide: const BorderSide(
    color: Color(0xFFFF3B30),
    strokeAlign: BorderSide.strokeAlignOutside,
  ),
);
