import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/widgets/side_bar.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBarCustom(),
          Expanded(
              child: Container(
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
