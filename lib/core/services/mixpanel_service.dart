import 'package:injectable/injectable.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/flavors.dart';

@lazySingleton
class MixpanelService {
  static Mixpanel? _mixpanel;
  static bool _isInitialized = false;

  static Future<void> initialize(Flavor flavor) async {
    try {
      final mixPanelApiKeys = await F.apiKeys;
      final mixpanelToken = mixPanelApiKeys.mixPanelKeys;

      _mixpanel = await Mixpanel.init(
        mixpanelToken,
        trackAutomaticEvents: true,
      );

      _isInitialized = true;

      // Ustaw właściwości środowiska
      await _mixpanel!.registerSuperProperties({
        'environment': flavor.name.toLowerCase(),
        'platform': 'mobile',
        'app_name': 'trueme',
      });

      AppLogger.public('Mixpanel initialized successfully');
    } catch (e) {
      AppLogger.error('Failed to initialize Mixpanel: $e');
    }
  }

  /// Identyfikuje użytkownika w Mixpanel
  static Future<void> identify(String userId) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      await _mixpanel!.identify(userId);
      AppLogger.public('User identified in Mixpanel: $userId');
    } catch (e) {
      AppLogger.error('Failed to identify user in Mixpanel: $e');
    }
  }

  /// Śledzi event bez właściwości
  static Future<void> track(String eventName) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      await _mixpanel!.track(eventName);
      AppLogger.dev('Tracked event: $eventName');
    } catch (e) {
      AppLogger.error('Failed to track event $eventName: $e');
    }
  }

  /// Śledzi event z właściwościami
  static Future<void> trackWithProperties(
    String eventName,
    Map<String, dynamic> properties,
  ) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      await _mixpanel!.track(eventName, properties: properties);
      AppLogger.dev('Tracked event: $eventName with properties: $properties');
    } catch (e) {
      AppLogger.error('Failed to track event $eventName: $e');
    }
  }

  /// Ustawia właściwości użytkownika
  static Future<void> setUserProperties(Map<String, dynamic> properties) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      for (final entry in properties.entries) {
        _mixpanel!.getPeople().set(entry.key, entry.value);
      }
      AppLogger.dev('Set user properties: $properties');
    } catch (e) {
      AppLogger.error('Failed to set user properties: $e');
    }
  }

  /// Ustawia właściwości użytkownika jednokrotnie
  static Future<void> setUserPropertiesOnce(
      Map<String, dynamic> properties,) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      for (final entry in properties.entries) {
        _mixpanel!.getPeople().setOnce(entry.key, entry.value);
      }
      AppLogger.dev('Set user properties once: $properties');
    } catch (e) {
      AppLogger.error('Failed to set user properties once: $e');
    }
  }

  /// Zwiększa numeryczną właściwość użytkownika
  static Future<void> incrementUserProperty(String property,
      [num value = 1,]) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      _mixpanel!.getPeople().increment(property, value.toDouble());
      AppLogger.dev('Incremented user property: $property by $value');
    } catch (e) {
      AppLogger.error('Failed to increment user property $property: $e');
    }
  }

  /// Dodaje wartość do listy właściwości użytkownika
  static Future<void> appendToUserProperty(
      String property, dynamic value,) async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      _mixpanel!.getPeople().append(property, value);
      AppLogger.dev('Appended to user property: $property value: $value');
    } catch (e) {
      AppLogger.error('Failed to append to user property $property: $e');
    }
  }

  /// Resetuje użytkownika (wylogowanie)
  static Future<void> reset() async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      await _mixpanel!.reset();
      AppLogger.public('Mixpanel user reset');
    } catch (e) {
      AppLogger.error('Failed to reset Mixpanel user: $e');
    }
  }

  /// Opt-in do trackingu (zgodnie z GDPR)
  static Future<void> optInTracking() async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      _mixpanel!.optInTracking();
      AppLogger.public('User opted in to tracking');
    } catch (e) {
      AppLogger.error('Failed to opt in tracking: $e');
    }
  }

  /// Opt-out z trackingu (zgodnie z GDPR)
  static Future<void> optOutTracking() async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      _mixpanel!.optOutTracking();
      AppLogger.public('User opted out of tracking');
    } catch (e) {
      AppLogger.error('Failed to opt out tracking: $e');
    }
  }

  /// Pobierz distinct ID użytkownika
  static Future<String?> getDistinctId() async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return null;
    }

    try {
      final distinctId = await _mixpanel!.getDistinctId();
      AppLogger.dev('Got distinct ID: $distinctId');
      return distinctId;
    } catch (e) {
      AppLogger.error('Failed to get distinct ID: $e');
      return null;
    }
  }

  /// Sprawdź czy użytkownik ma opt-out
  static Future<bool> hasOptedOutTracking() async {
    if (!_isInitialized || _mixpanel == null) {
      return true; // Domyślnie opt-out jeśli nie zainicjalizowane
    }

    try {
      final hasOptedOut = await _mixpanel!.hasOptedOutTracking();
      return hasOptedOut ?? true;
    } catch (e) {
      AppLogger.error('Failed to check opt-out status: $e');
      return true;
    }
  }

  /// Flush wszystkich eventów
  static Future<void> flush() async {
    if (!_isInitialized || _mixpanel == null) {
      AppLogger.dev('Mixpanel not initialized');
      return;
    }

    try {
      await _mixpanel!.flush();
      AppLogger.dev('Mixpanel flushed');
    } catch (e) {
      AppLogger.error('Failed to flush Mixpanel: $e');
    }
  }

  /// Sprawdza czy Mixpanel jest zainicjalizowany
  static bool get isInitialized => _isInitialized;
}
