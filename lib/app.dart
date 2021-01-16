import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobbydb_vision/src/core/localization.dart';
import 'package:hobbydb_vision/src/core/routes.dart';
import 'package:hobbydb_vision/src/screens/main_screen.dart';
import 'package:hobbydb_vision/src/core/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateTitle: (context) => 'HobbyDb',
        theme: AppTheme.theme,
        localizationsDelegates: [
          AppLocalizationsDelegate()
        ],
        routes: {
          AppRoutes.home: (context) {
            return MainScreen();
          }
        });
  }
}
