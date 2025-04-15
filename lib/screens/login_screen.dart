import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobilechill/screens/home_screen.dart' show HomeScreen;
import 'package:mobilechill/utils/constants/image_strings.dart' show TImages;
import 'package:mobilechill/utils/helper_functions.dart';

import '../common/spacing_style.dart' show TSpacingStyle;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //Logo, Title, Sub-title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
