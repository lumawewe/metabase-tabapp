import 'package:flutter/material.dart';

import '../../../helper/dimensions.dart';

class BlueButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  final double? width;
  const BlueButton(
      {super.key, required this.buttonText, this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width20, vertical: height08),
        decoration: ShapeDecoration(
          color: const Color(0xFF007AFF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              height: 1.29,
              letterSpacing: -0.40,
            ),
          ),
        ),
      ),
    );
  }
}
