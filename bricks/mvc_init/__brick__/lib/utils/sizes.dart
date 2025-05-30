import 'package:flutter/material.dart';

extension SizeTheme on BuildContext {
  Size get sizes => MediaQuery.of(this).size;
}
