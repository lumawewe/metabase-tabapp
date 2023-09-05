import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabase_admin_ipad/helper/constant.dart';
import 'package:metabase_admin_ipad/helper/dimensions.dart';
import 'package:metabase_admin_ipad/home_container.dart';
import 'package:metabase_admin_ipad/pages/loginPage/forgot_password_page.dart';
import 'package:metabase_admin_ipad/pages/loginPage/widgets/blue_button.dart';
import 'package:metabase_admin_ipad/pages/loginPage/widgets/logo_metabase_word.dart';
import 'package:metabase_admin_ipad/widgets/text_label_with_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width100 * 3.68),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: EdgeInsets.symmetric(vertical: height20 * 2),
              child: const LogoMetabaseWord(),
            ),
            //title & description
            Padding(
              padding: EdgeInsets.symmetric(vertical: height30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log in',
                      style: blackStyle(fontSize: 'title3', type: 'title')),
                  SizedBox(height: height08),
                  Text(
                      'Welcome to admin portal, please put your login credentials below to start using the app.',
                      style: greyStyle(fontSize: 'body3', type: 'body')),
                ],
              ),
            ),
            //the rest
            Padding(
              padding: EdgeInsets.symmetric(vertical: height20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //textfields
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLabelWithTextfield(
                            textLabel: 'Email',
                            hintText: '',
                            textEditingController: _emailController),
                        SizedBox(height: height31),
                        TextLabelWithTextfield(
                          textLabel: 'Password',
                          hintText: '',
                          textEditingController: _passwordController,
                          obscureText: isObscureText,
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: isObscureText
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                        )
                      ],
                    ),
                  ),

                  //forgotpassword
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage(
                                    emailFromLoginPage: _emailController.text),
                              ));
                        },
                        child: Text('Forgot password?',
                            style: blueStyle(fontSize: 'body2', type: 'body')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height10),
                    child: const Divider(
                      thickness: 0.5,
                      color: Color(0xFFD0D5DD),
                    ),
                  ),
                  //remember me & log in button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //rememberme
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CupertinoSwitch(
                            value: isRememberMe,
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = value;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          Text('Remember me',
                              style:
                                  greyStyle(fontSize: 'body3', type: 'body')),
                        ],
                      ),
                      //log in button
                      BlueButton(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeContainer(),
                                ));
                          },
                          buttonText: 'Login')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
