part of 'change_theme_bloc.dart';

class ChangeThemeState {
  MainThemeApp? mainThemeApp;
  ChangeThemeState({this.mainThemeApp}) {
    mainThemeApp ??= LightModeTheme();
  }

  copyWith({MainThemeApp? mainThemeApp}) {
    return ChangeThemeState(
      mainThemeApp: mainThemeApp ?? this.mainThemeApp,
    );
  }
}
