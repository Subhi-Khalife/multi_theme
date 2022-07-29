import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:multi_theme/theme/dark_mode_theme.dart';
import 'package:multi_theme/theme/light_mode_theme.dart';
import 'package:multi_theme/theme/main_theme_app.dart';

part 'change_theme_event.dart';
part 'change_theme_state.dart';

class ChangeThemeBloc extends Bloc<ChangeThemeEvent, ChangeThemeState> {
  ChangeThemeBloc() : super(ChangeThemeState()) {
    on<ChangeThemeEvent>((event, emit) {
      emit(state.copyWith(mainThemeApp: LightModeTheme()));
    });
    on<ChangeThemeToDarkMode>(_mapChangeThemeToDarkMode);
    on<ChangeThemeToLightMode>(_mapChangeThemeToLightMode);
  }
  _mapChangeThemeToDarkMode(ChangeThemeToDarkMode event, Emitter<ChangeThemeState> emit) {
    emit(state.copyWith(mainThemeApp: DarkModeTheme()));
  }

  _mapChangeThemeToLightMode(ChangeThemeToLightMode event, Emitter<ChangeThemeState> emit) {
    emit(state.copyWith(mainThemeApp: LightModeTheme()));
  }
}
