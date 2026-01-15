import 'package:flutter/material.dart';

extension AppThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;
  Color get baseTitleColor => theme.textTheme.titleLarge?.color ?? Colors.white;
  Color get baseSubtitleColor => theme.textTheme.titleMedium?.color ?? Colors.white70;
}
