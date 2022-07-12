import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/widgets/custom_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomButton(
                  icons: FontAwesomeIcons.google,
                  title: 'Sign Up with Google',
                ),
                CustomButton(
                  icons: FontAwesomeIcons.facebook,
                  title: 'Sign Up with Facebook',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
