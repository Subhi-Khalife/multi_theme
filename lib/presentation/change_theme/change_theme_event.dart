part of 'change_theme_bloc.dart';

@immutable
abstract class ChangeThemeEvent {}

class ChangeThemeToDarkMode extends ChangeThemeEvent {}

class ChangeThemeToLightMode extends ChangeThemeEvent {}
