import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/pages/loginPage/login_page.dart';

import 'helper/dimensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2F2F7),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFF007AFF), //<-- SEE HERE
          selectionColor: Color(0xFFcce8ff),
          selectionHandleColor: Color(0xFF007AFF),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
