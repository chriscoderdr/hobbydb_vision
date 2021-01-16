import 'package:flutter/material.dart';
import 'package:hobbydb_vision/src/localizations/messages_all.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static Future<AppLocalizations> load(Locale locale) {
    return initializeMessages(locale.toString()).then((_) {
      return AppLocalizations(locale);
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get launchScanner => Intl.message('Launch Scanner',
      name: 'launchScanner', args: [], locale: locale.toString());

  String get createCustomQR => Intl.message('Create Custom QR',
      name: 'createCustomQR', args: [], locale: locale.toString());

  String get help =>
      Intl.message('Help', name: 'help', args: [], locale: locale.toString());

  String get blog =>
      Intl.message('Blog', name: 'blog', args: [], locale: locale.toString());
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      locale.languageCode.toLowerCase().contains('en');

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}
