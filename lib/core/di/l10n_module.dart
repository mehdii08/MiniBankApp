import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class L10nModule {
  @lazySingleton
  List<Locale> supportedLocales() => const <Locale>[Locale('en')];
}


