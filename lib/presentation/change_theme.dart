import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme/presentation/change_theme/change_theme_bloc.dart';

class ChangeThemeScreen extends StatefulWidget {
  const ChangeThemeScreen({Key? key}) : super(key: key);

  @override
  State<ChangeThemeScreen> createState() => _ChangeThemeScreenState();
}

class _ChangeThemeScreenState extends State<ChangeThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<ChangeThemeBloc>(context).add(ChangeThemeToDarkMode());
              },
              child: Text("Dark",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<ChangeThemeBloc>(context).add(ChangeThemeToLightMode());
              },
              child: Text(
                "Light",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
