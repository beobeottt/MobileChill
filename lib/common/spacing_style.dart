import 'package:flutter/material.dart';
import 'package:mobilechill/utils/constants/sizes.dart' show TSizes;

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
