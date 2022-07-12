import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.icons, required this.title});

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        // GoogleSigninService().siginWithGoogle();
        // setState(() {
        // });
      },
      icon: FaIcon(icons),
      label: Text(title),
    );
  }
}
