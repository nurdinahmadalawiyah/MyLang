import 'package:flutter/material.dart';
import 'package:my_lang/Screens/HomeScreen/home_screen.dart';
import 'package:my_lang/Screens/SignUpScreen/sign_up.dart';
import 'package:my_lang/components/account_check.dart';
import 'package:my_lang/components/logo_components.dart';
import 'package:my_lang/components/rounded_button.dart';
import 'package:my_lang/components/rounded_input_field.dart';
import 'package:my_lang/components/rounded_password_field.dart';
import 'package:my_lang/constant.dart';

class BodySignInScreen extends StatelessWidget {
  const BodySignInScreen({
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
              SizedBox(height: size.height * 0.07),
              Container(
                  height: 450,
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
                        Container(
                          height: 6,
                          width: 60,
                          decoration: BoxDecoration(
                              color: kGreyColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(height: size.height * 0.02),
                        const Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: kPrimaryColor),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text(
                          "Login to your Account",
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
                          onChanged: (value) {},
                          hintext: 'Password',
                        ),
                        const Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedButton(
                          text: "SIGN IN",
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
                        SizedBox(height: size.height * 0.01),
                        AccountCheck(
                          login: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const SignUpScreen();
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
