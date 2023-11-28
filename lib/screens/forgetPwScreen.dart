import 'package:flutter/material.dart';

import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import './sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenWidth(context) * 0.9,
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
                  Text(
                    "Reset Password",
                    style: Helper.getTheme(context).titleLarge,
                  ),
                  Spacer(),
                  Text(
                    "Please enter your email to recieve a link to create a new password via email",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 1),
                  CustomTextInput(hintText: "Email"),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SendOTPScreen.routeName);
                      },
                      child: Text("Send"),
                    ),
                  ),
                  // Spacer(flex: 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
