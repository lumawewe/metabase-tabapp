import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/helper/constant.dart';
import 'package:metabase_admin_ipad/helper/dimensions.dart';

const String frontAddress = 'assets/icons/sidebar';
const String backAddress = '_icon.png';

class SideBarCustom extends StatefulWidget {
  const SideBarCustom({super.key});

  @override
  State<SideBarCustom> createState() => _SideBarCustomState();
}

class _SideBarCustomState extends State<SideBarCustom> {
  List<String> topItemNameList = [
    'Dashboard',
    'Member Listing',
    'Social Trading',
    'Group Structures',
    'Merchant Listing',
  ];
  List<String> topIconAddressList = [
    '$frontAddress/dashboard$backAddress',
    '$frontAddress/member_listing$backAddress',
    '$frontAddress/social_trading$backAddress',
    '$frontAddress/group_structures$backAddress',
    '$frontAddress/merchant_listing$backAddress',
  ];

  List<String> operationsItemNameList = [
    'Revenue Setting',
    'Report',
    'Request',
    'Notification',
    'Rewards Setting',
    'Credit & Bonus Setting',
    'Price Streams',
    'Groups',
    'cBroker Manager',
    'CRM Admin Role',
  ];
  List<String> operationsIconAddressList = [
    '$frontAddress/revenue_setting$backAddress',
    '$frontAddress/report$backAddress',
    '$frontAddress/request$backAddress',
    '$frontAddress/notification$backAddress',
    '$frontAddress/rewards_setting$backAddress',
    '$frontAddress/credit_bonus_setting$backAddress',
    '$frontAddress/price_streams$backAddress',
    '$frontAddress/groups$backAddress',
    '$frontAddress/cbroker_manager$backAddress',
    '$frontAddress/crm_admin_role$backAddress',
  ];

  List<String> othersItemNameList = [
    'Renewals & Billing',
    'UI Version Editor',
    'Tutorial Editor',
  ];
  List<String> othersIconAddressList = [
    '$frontAddress/renewal_billing$backAddress',
    '$frontAddress/ui_version_editor$backAddress',
    '$frontAddress/tutorial_editor$backAddress',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: width100 * 2.65,
        color: const Color(0xFFF2F2F7),
        padding: EdgeInsets.symmetric(horizontal: width20),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height20),
              child: Image.asset(
                'assets/logo/metabase_word_icon.png',
                width: width100 * 1.93,
                height: height24,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height31,
              ),
              child: profileRow(
                  name: 'Admin Johnwick',
                  email: 'adminjohnwick123@gmail.com',
                  photoAddress:
                      'https://randomuser.me/api/portraits/men/79.jpg'),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: topItemNameList
                  .mapIndexed((i, e) => sideBarItemRow(
                      iconAddress: topIconAddressList[i], itemName: e))
                  .toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height20),
              child: Text('Operations',
                  style: blackStyle(fontSize: 'subtitle2', type: 'subtitle')),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: operationsItemNameList
                  .mapIndexed((i, e) => sideBarItemRow(
                      iconAddress: operationsIconAddressList[i], itemName: e))
                  .toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height20),
              child: Text('Others',
                  style: blackStyle(fontSize: 'subtitle2', type: 'subtitle')),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: othersItemNameList
                  .mapIndexed((i, e) => sideBarItemRow(
                      iconAddress: othersIconAddressList[i], itemName: e))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget profileRow(
      {required String name,
      required String email,
      required String photoAddress}) {
    return Row(
      children: [
        Container(
          width: height10 * 4.4,
          height: height10 * 4.4,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage(photoAddress),
              fit: BoxFit.fill,
            ),
            shape: const OvalBorder(),
          ),
        ),
        SizedBox(width: width24 / 2),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                textAlign: TextAlign.center,
                style: blackStyle(fontSize: 'subtitle1', type: 'subtitle')),
            Text(email,
                textAlign: TextAlign.center,
                style: greyStyle(fontSize: 'body1', type: 'body')),
          ],
        ),
      ],
    );
  }

  Widget sideBarItemRow(
      {required String iconAddress, required String itemName}) {
    return Padding(
      padding: EdgeInsets.all(width08),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconAddress,
            height: height10 * 2.8,
            width: height10 * 2.8,
            fit: BoxFit.contain,
          ),
          SizedBox(width: width24 / 2),
          Text(itemName,
              textAlign: TextAlign.center,
              style: blackStyle(fontSize: 'body3', type: 'body')),
        ],
      ),
    );
  }
}
