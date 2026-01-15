import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pegasus_wallet/core/theme/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(AppTheme.darkTheme));

  void changeTheme(AppTheme theme) {
    emit(ThemeState(theme));
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    final key = json['theme'] as String?;
    final theme = AppTheme.values.firstWhere(
          (t) => t.toString() == key,
      orElse: () => AppTheme.darkTheme,
    );
    return ThemeState(theme);
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return {'theme': state.theme.toString()};
  }
}