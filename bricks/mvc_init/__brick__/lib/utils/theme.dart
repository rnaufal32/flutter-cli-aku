import 'package:flutter/material.dart';

extension ThemeHelper on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
