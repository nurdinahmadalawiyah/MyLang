import 'package:flutter/material.dart';
import 'package:my_lang/Screens/HomeScreen/home_screen.dart';
import 'package:my_lang/Screens/SignUpScreen/components/social_icon.dart';
import 'package:my_lang/components/account_check.dart';
import 'package:my_lang/components/logo_components.dart';
import 'package:my_lang/components/rounded_button.dart';
import 'package:my_lang/components/rounded_input_field.dart';
import 'package:my_lang/components/rounded_password_field.dart';
import 'package:my_lang/constant.dart';

class BodySingUpScreen extends StatelessWidget {
  const BodySingUpScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: LogoComponents(size: size),
              ),
              Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: radiusTop,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: kPrimaryColor),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text(
                          "Create your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: kPrimaryColor),
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputField(
                          hintext: "Email",
                          onChanged: (value) {},
                        ),
                        RoundedPasswordField(
                          onChanged: (value) {  },
                          hintext: 'Password',
                        ),
                        RoundedPasswordField(
                          hintext: "Confirm Password",
                          onChanged: (value) {  },
                        ),
                        RoundedButton(
                          text: "SIGN UP",
                          press: () {},
                        ),
                        const Text(
                          "Or sign up with",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SocialIcon(
                              iconSrc: "assets/icons/google.svg",
                              press: () {},
                            ),
                            SocialIcon(
                              iconSrc: "assets/icons/facebook-icon.svg",
                              press: () {},
                            ),
                            SocialIcon(
                              iconSrc: "assets/icons/twitter.svg",
                              press: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        AccountCheck(
                          login: false,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}