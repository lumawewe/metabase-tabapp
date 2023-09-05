import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/helper/constant.dart';
import 'package:metabase_admin_ipad/pages/loginPage/widgets/blue_button.dart';
import 'package:metabase_admin_ipad/pages/loginPage/widgets/logo_metabase_word.dart';
import 'package:metabase_admin_ipad/widgets/text_label_with_textfield.dart';

import '../../helper/dimensions.dart';

class ForgotPasswordPage extends StatefulWidget {
  final String emailFromLoginPage;
  const ForgotPasswordPage({super.key, required this.emailFromLoginPage});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.text = widget.emailFromLoginPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width100 * 3.68),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const LogoMetabaseWord(),
            //column title till button
            Padding(
              padding: EdgeInsets.symmetric(vertical: height30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //column title and description
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password Recovery',
                            style:
                                blackStyle(fontSize: 'title3', type: 'title')),
                        SizedBox(height: height08),
                        Text(
                            'Please fill in the email you’ve used to create the admin portal account and we’ll send you a reset password link.',
                            style: greyStyle(fontSize: 'body3', type: 'body')),
                      ],
                    ),
                  ),
                  //column textfield & button
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextLabelWithTextfield(
                            textLabel: 'Email',
                            hintText: '',
                            textEditingController: _emailController),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: height31),
                          child: const Divider(
                            thickness: 0.5,
                            color: Color(0xFFCFD4DC),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: BlueButton(
                              onTap: () {},
                              buttonText: 'Reset Password',
                              width: width100 * 1.68,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('Back to login',
                  style: blueStyle(fontSize: 'body2', type: 'subtitle')),
            )
          ],
        ),
      ),
    );
  }
}
