// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class AppLocalizations {
//   AppLocalizations(this.locale);

//   final Locale locale;

//   static AppLocalizations of(BuildContext context) {
//     return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
//   }

//   static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

//   Map<String, String> _localizedStrings = {};

//   Future<void> load() async {
//     final String jsonString = await rootBundle.loadString('lib/l10n/intl_${locale.languageCode}.json');
//     _localizedStrings = json.decode(jsonString).cast<String, String>();
//   }

//   String? get title => _localizedStrings['title'];
//   String? get calculator => _localizedStrings['calculator'];
//   String? get signUp => _localizedStrings['signUp'];
//   String? get signIn => _localizedStrings['signIn'];
//   String? get selectPicture => _localizedStrings['selectPicture'];
//   String? get takePicture => _localizedStrings['takePicture'];
// }

// class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
//   const _AppLocalizationsDelegate();

//   @override
//   bool isSupported(Locale locale) {
//     return ['en', 'es'].contains(locale.languageCode);
//   }

//   @override
//   Future<AppLocalizations> load(Locale locale) async {
//     final localizations = AppLocalizations(locale);
//     await localizations.load();
//     return localizations;
//   }

//   @override
//   bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  Future<void> load() async {
    final jsonString = await rootBundle.loadString('lib/l10n/intl_${locale.languageCode}.json');
    _localizedStrings = json.decode(jsonString).cast<String, String>();
  }

  String get title => _localizedStrings['title'] ?? 'My App';
  String get calculator => _localizedStrings['calculator'] ?? 'Calculator';
  String get signUp => _localizedStrings['signUp'] ?? 'Sign Up';
  String get signIn => _localizedStrings['signIn'] ?? 'Sign In';
  String get selectPicture => _localizedStrings['selectPicture'] ?? 'Select from Gallery';
  String get takePicture => _localizedStrings['takePicture'] ?? 'Take a Picture';
  String get email => _localizedStrings['email'] ?? 'Email';
  String get emailError => _localizedStrings['emailError'] ?? 'Please enter your email';
  String get password => _localizedStrings['password'] ?? 'Password';
  String get passwordError => _localizedStrings['passwordError'] ?? 'Please enter your password';
  String get welcome => _localizedStrings['welcome'] ?? 'Welcome to My App';
  String get editProfilePicture => _localizedStrings['editProfilePicture'] ?? 'Edit Profile Picture';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
