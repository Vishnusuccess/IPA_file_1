import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
// Lokalizacja
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/service_locator/service_locater.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> setupServiceLocator({required String flavorName}) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  final preferredLocales = widgetsBinding.platformDispatcher.locales;
  const supportedLocales = AppLocalizations.supportedLocales;
  final resolvedLocale =
      basicLocaleListResolution(preferredLocales, supportedLocales);
  final appLocalizations = await AppLocalizations.delegate.load(resolvedLocale);

  getIt.registerSingleton<AppLocalizations>(appLocalizations);

  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  // Initialize other services
  $initGetIt(getIt, environment: flavorName);
}
