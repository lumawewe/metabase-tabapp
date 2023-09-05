import 'package:flutter/material.dart';

import '../../../helper/dimensions.dart';

class LogoMetabaseWord extends StatelessWidget {
  const LogoMetabaseWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo/metabase_word_icon.png',
      fit: BoxFit.fitWidth,
      width: width100 * 3.5,
      height: height20 * 2,
    );
  }
}
