// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'True.me';

  @override
  String get loginScreenTitle => 'Logowanie';

  @override
  String get signupScreenTitle => 'Rejestracja';

  @override
  String get forgotPasswordScreenTitle => 'Resetuj hasło';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Hasło';

  @override
  String get confirmPasswordHint => 'Potwierdź hasło';

  @override
  String get loginButton => 'Zaloguj się';

  @override
  String get signupButton => 'Zarejestruj się';

  @override
  String get resetPasswordButton => 'Resetuj hasło';

  @override
  String get noAccountText => 'Nie masz konta? Zarejestruj się';

  @override
  String get haveAccountText => 'Masz już konto? Zaloguj się';

  @override
  String get backToLoginText => 'Powrót do logowania';

  @override
  String get forgotPasswordText => 'Zapomniałeś hasła?';

  @override
  String get emailValidationError => 'Wprowadź email';

  @override
  String get passwordValidationError => 'Hasło musi mieć co najmniej 6 znaków';

  @override
  String get passwordMatchError => 'Hasła nie są identyczne';

  @override
  String get authErrorMessage => 'Wystąpił błąd podczas uwierzytelniania';

  @override
  String get verifyEmailMessage => 'Potwierdź swój email, aby kontynuować.';

  @override
  String get passwordResetMessage => 'Wysłano email z resetem hasła';

  @override
  String userErrorMessage(String error) {
    return 'Błąd: <b>$error</b>';
  }

  @override
  String get chatRoute => 'Czat';

  @override
  String get chatScreenTitle => 'Czat';

  @override
  String get logoutButton => 'Wyloguj';

  @override
  String get goToNextPageButton => 'Przejdź do następnej strony';

  @override
  String get exerciseMoodCheckTitle => 'Sprawdzenie nastroju';

  @override
  String get exerciseChooseEmotions => 'Wybierz emocje, które były obecne.';

  @override
  String get exerciseSubmitButton => 'Wyślij';

  @override
  String get exerciseNoData => 'Brak danych ćwiczenia';

  @override
  String get exerciseNotFound => 'Ćwiczenie nie zostało znalezione';

  @override
  String get exerciseSelectAnswerError => 'Wybierz co najmniej jedną odpowiedź';

  @override
  String exerciseDayTimeFormat(int dayNumber) {
    return 'Dzień $dayNumber';
  }

  @override
  String exerciseDaysLeftFormat(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '<b>$days</b> dni pozostało',
      few: '<b>$days</b> dni pozostało',
      one: '<b>1</b> dzień pozostał',
      zero: 'Brak dni',
    );
    return '$_temp0';
  }

  @override
  String get feedbackScreenTitle => 'Opinia';

  @override
  String get feedbackWeeklyPrompt => 'Opowiedz nam więcej o swoim tygodniu:';

  @override
  String get feedbackSubmitButton => 'Wyślij';

  @override
  String get feedbackSkipOption => 'Wolę nie odpowiadać';

  @override
  String get feedbackSuccessMessage => 'Opinia została wysłana pomyślnie!';

  @override
  String get feedbackIncompleteError => 'Oceń wszystkie pytania przed wysłaniem.';

  @override
  String get feedbackSkippedMessage => 'Pominięto wysyłanie opinii.';

  @override
  String get feedbackNotFound => 'Opinia nie została znaleziona';

  @override
  String get settingsScreenTitle => 'Ustawienia';

  @override
  String get settingsProfile => 'Profil';

  @override
  String get settingsHelp => 'Pomoc';

  @override
  String get settingsAgreements => 'Zgody';

  @override
  String get logoutButtonText => 'Wyloguj się';

  @override
  String get deleteAccountButtonText => 'Usuń konto';

  @override
  String get deleteAccountConfirmationTitle => 'Potwierdzenie usunięcia konta';

  @override
  String get deleteAccountConfirmationMessage => 'Czy na pewno chcesz usunąć swoje konto?';

  @override
  String get deleteAccountCancelButton => 'Anuluj';

  @override
  String get deleteAccountConfirmButton => 'Potwierdź';

  @override
  String get deletedAccountMessage => 'Konto zostało usunięte';

  @override
  String get agreementsInfo => 'Tutaj znajdziesz listę zgód, które potwierdziłeś podczas rejestracji w aplikacji';

  @override
  String get termsAndConditions => 'Regulamin';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get languageSettings => 'Język';

  @override
  String get languageEnglish => 'Angielski';

  @override
  String get languagePolish => 'Polski';

  @override
  String get loginWelcomeReady => 'Jesteś gotowy?';

  @override
  String get loginWelcomeBegin => 'Rozpocznij swoją';

  @override
  String get loginWelcomeJourney => 'podróż';

  @override
  String get loginLogInSignUp => 'Zaloguj się / Zarejestruj się';

  @override
  String get loginOr => 'lub';

  @override
  String get loginContinueGoogle => 'Kontynuuj z Google';

  @override
  String get loginContinueApple => 'Kontynuuj z Apple';

  @override
  String get progressReady => 'Gotowe';

  @override
  String get progressNextCheckIn => 'Następne zadanie dostępne za: ';

  @override
  String get progressTrackDaily => 'Śledź swój codzienny postęp\nw programie';

  @override
  String get progressTimeLeft => 'Tutaj możesz śledzić\nile czasu zostało\ndo następnego\nćwiczenia.';

  @override
  String get chatStartConversation => 'Rozpocznij rozmowę\nz TrueMe Coach';

  @override
  String get chatStartConversationCompleted => 'Rozpocznij rozmowę\nz ✨TrueMe Coach✨';

  @override
  String get chatRememberWaiting => 'Pamiętaj, że podczas\noczekiwania na następne\nćwiczenie zawsze możesz\nporozmawiać z TrueMe\nCoach';

  @override
  String get chatRememberWaitingCompleted => 'Pamiętaj, że podczas\noczekiwania na następne\nćwiczenie zawsze możesz\nporozmawiać z ✨TrueMe\nCoach✨';

  @override
  String get impactMetricAssessment => 'Ocena';

  @override
  String get impactMetricSubmit => 'Wyślij';

  @override
  String get impactMetricNotFound => 'Metryka wpływu nie została znaleziona';

  @override
  String get impactMetricFeelStressed => 'Czuję się zestresowany\ncały czas';

  @override
  String get impactMetricLifeEasy => 'Życie wydaje się łatwe\ni możliwe do opanowania';

  @override
  String get reportIssueTitle => 'Co chciałbyś nam zgłosić?';

  @override
  String get reportIssueChoose => 'Wybierz swój problem';

  @override
  String get reportIssueEmailHint => 'Twój email';

  @override
  String get reportIssueDescribeHint => 'Opisz problem...';

  @override
  String get reportIssueSubmit => 'Wyślij';

  @override
  String get forceUpdateRequired => 'Wymagana aktualizacja!';

  @override
  String get forceUpdateButton => 'Aktualizuj';

  @override
  String get settingsDeleteAccount => 'Usuń konto';

  @override
  String get settingsContactSupport => 'Skontaktuj się z pomocą';

  @override
  String get settingsTester => 'Tester';

  @override
  String get settingsCleanOnboardingDismiss => 'WYCZYŚĆ UKRYWANIE WPROWADZENIA';

  @override
  String get settingsMarkOnboardingCompleted => 'OZNACZ WPROWADZENIE JAKO UKOŃCZONE';

  @override
  String get forceUpdateMessage => 'Używasz nieaktualnej wersji TrueMe. Proszę zaktualizuj, aby kontynuować.';

  @override
  String get chatBotName => 'TrueMe';

  @override
  String get chatBotThinking => 'Myślę...';

  @override
  String get chatUserDefault => 'Anonimowy odkrywca';

  @override
  String get chatReply => 'Odpowiedz';

  @override
  String get chatReplyDots => 'Odpowiedz...';

  @override
  String get reportIssueChooseYourIssue => 'Wybierz swój problem';

  @override
  String get reportIssueInappropriate => 'Niewłaściwa treść';

  @override
  String get reportIssueError => 'Błąd';

  @override
  String get reportIssueOffensive => 'Obraźliwa treść';

  @override
  String get reportIssueOther => 'Inne';

  @override
  String get buttonStart => 'Rozpocznij';

  @override
  String get buttonSubmit => 'Wyślij';

  @override
  String get buttonTryAgain => 'Spróbuj ponownie';

  @override
  String get buttonGoToExercise => 'Przejdź do Ćwiczenia';

  @override
  String get buttonStartImpactMetric => 'Rozpocznij Ocenę Wpływu';

  @override
  String get buttonGiveFeedback => 'Daj Opinię';

  @override
  String get buttonContinue => 'Kontynuuj';

  @override
  String get menuTitle => 'Menu';

  @override
  String get menuReportIssue => 'Zgłoś Problem';

  @override
  String get menuSettings => 'Ustawienia';

  @override
  String get menuEvents => 'Wydarzenia';

  @override
  String get menuPrograms => 'Programy';

  @override
  String get errorSomethingWrong => 'Ups, coś poszło nie tak.';

  @override
  String get errorWeAreHere => 'Nie martw się, jesteśmy tutaj, żeby pomóc!';

  @override
  String get errorCouldNotOpenLink => 'Nie można otworzyć linku.';

  @override
  String get errorPleaseSelectIssueType => 'Wybierz typ problemu';

  @override
  String get errorPleaseFillAllFields => 'Wypełnij poprawnie wszystkie pola';

  @override
  String get loadingMessage => 'Ładowanie...';

  @override
  String get successReportSubmitted => 'Zgłoszenie zostało wysłane pomyślnie';

  @override
  String get successOnboardingCleared => 'Stan onboardingu został wyczyszczony! Uruchom ponownie aplikację, aby zobaczyć onboarding.';

  @override
  String get successOnboardingCompleted => 'Onboarding został oznaczony jako ukończony!';

  @override
  String get languageChangeSuccess => 'Język został zmieniony pomyślnie!';

  @override
  String get languageChangeError => 'Nie udało się zmienić języka.';
}
