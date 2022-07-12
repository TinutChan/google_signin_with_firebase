import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
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
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    GoogleSigninService().siginWithGoogle();
                    setState(() {});
                  },
                  icon: const FaIcon(FontAwesomeIcons.google),
                  label: const Text('Sign Up with Google'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
