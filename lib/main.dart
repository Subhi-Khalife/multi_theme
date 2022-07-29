import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme/presentation/change_theme.dart';
import 'package:multi_theme/presentation/change_theme/change_theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangeThemeBloc changeThemeBloc = ChangeThemeBloc();
    return BlocProvider<ChangeThemeBloc>(
      create: (context) => changeThemeBloc,
      child: BlocBuilder<ChangeThemeBloc, ChangeThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Multi Theme',
            theme: state.mainThemeApp!.themeData,
            home: const ChangeThemeScreen(),
          );
        },
      ),
    );
  }
}