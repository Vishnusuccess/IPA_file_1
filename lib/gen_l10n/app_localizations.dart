import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pl')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'True.me'**
  String get appName;

  /// No description provided for @loginScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginScreenTitle;

  /// No description provided for @signupScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signupScreenTitle;

  /// No description provided for @forgotPasswordScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get forgotPasswordScreenTitle;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailHint;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordHint;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordHint;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @signupButton.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signupButton;

  /// No description provided for @resetPasswordButton.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordButton;

  /// No description provided for @noAccountText.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Sign Up'**
  String get noAccountText;

  /// No description provided for @haveAccountText.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Login'**
  String get haveAccountText;

  /// No description provided for @backToLoginText.
  ///
  /// In en, this message translates to:
  /// **'Back to Login'**
  String get backToLoginText;

  /// No description provided for @forgotPasswordText.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPasswordText;

  /// No description provided for @emailValidationError.
  ///
  /// In en, this message translates to:
  /// **'Enter an email'**
  String get emailValidationError;

  /// No description provided for @passwordValidationError.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordValidationError;

  /// No description provided for @passwordMatchError.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordMatchError;

  /// No description provided for @authErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during authentication'**
  String get authErrorMessage;

  /// No description provided for @verifyEmailMessage.
  ///
  /// In en, this message translates to:
  /// **'Please verify your email to proceed.'**
  String get verifyEmailMessage;

  /// No description provided for @passwordResetMessage.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent'**
  String get passwordResetMessage;

  /// No description provided for @userErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Error: <b>{error}</b>'**
  String userErrorMessage(String error);

  /// No description provided for @chatRoute.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatRoute;

  /// No description provided for @chatScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatScreenTitle;

  /// No description provided for @logoutButton.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logoutButton;

  /// No description provided for @goToNextPageButton.
  ///
  /// In en, this message translates to:
  /// **'Go to next page'**
  String get goToNextPageButton;

  /// No description provided for @exerciseMoodCheckTitle.
  ///
  /// In en, this message translates to:
  /// **'Mood check'**
  String get exerciseMoodCheckTitle;

  /// No description provided for @exerciseChooseEmotions.
  ///
  /// In en, this message translates to:
  /// **'Choose the emotions that were present.'**
  String get exerciseChooseEmotions;

  /// No description provided for @exerciseSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get exerciseSubmitButton;

  /// No description provided for @exerciseNoData.
  ///
  /// In en, this message translates to:
  /// **'No exercise data available'**
  String get exerciseNoData;

  /// No description provided for @exerciseNotFound.
  ///
  /// In en, this message translates to:
  /// **'Exercise not found'**
  String get exerciseNotFound;

  /// No description provided for @exerciseSelectAnswerError.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one answer'**
  String get exerciseSelectAnswerError;

  /// No description provided for @exerciseDayTimeFormat.
  ///
  /// In en, this message translates to:
  /// **'Day {dayNumber}'**
  String exerciseDayTimeFormat(int dayNumber);

  /// No description provided for @exerciseDaysLeftFormat.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0 {No days left} =1 {<b>1</b> day left} other {<b>{days}</b> days left}}'**
  String exerciseDaysLeftFormat(int days);

  /// No description provided for @feedbackScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedbackScreenTitle;

  /// No description provided for @feedbackWeeklyPrompt.
  ///
  /// In en, this message translates to:
  /// **'Tell us more about your week:'**
  String get feedbackWeeklyPrompt;

  /// No description provided for @feedbackSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get feedbackSubmitButton;

  /// No description provided for @feedbackSkipOption.
  ///
  /// In en, this message translates to:
  /// **'Prefer not to answer'**
  String get feedbackSkipOption;

  /// No description provided for @feedbackSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Feedback submitted successfully!'**
  String get feedbackSuccessMessage;

  /// No description provided for @feedbackIncompleteError.
  ///
  /// In en, this message translates to:
  /// **'Please rate all questions before submitting.'**
  String get feedbackIncompleteError;

  /// No description provided for @feedbackSkippedMessage.
  ///
  /// In en, this message translates to:
  /// **'Feedback submission skipped.'**
  String get feedbackSkippedMessage;

  /// No description provided for @feedbackNotFound.
  ///
  /// In en, this message translates to:
  /// **'Feedback not found'**
  String get feedbackNotFound;

  /// No description provided for @settingsScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsScreenTitle;

  /// No description provided for @settingsProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settingsProfile;

  /// No description provided for @settingsHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get settingsHelp;

  /// No description provided for @settingsAgreements.
  ///
  /// In en, this message translates to:
  /// **'Agreements'**
  String get settingsAgreements;

  /// No description provided for @logoutButtonText.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logoutButtonText;

  /// No description provided for @deleteAccountButtonText.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccountButtonText;

  /// No description provided for @deleteAccountConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Account Confirmation'**
  String get deleteAccountConfirmationTitle;

  /// No description provided for @deleteAccountConfirmationMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get deleteAccountConfirmationMessage;

  /// No description provided for @deleteAccountCancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get deleteAccountCancelButton;

  /// No description provided for @deleteAccountConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get deleteAccountConfirmButton;

  /// No description provided for @deletedAccountMessage.
  ///
  /// In en, this message translates to:
  /// **'Account was deleted'**
  String get deletedAccountMessage;

  /// No description provided for @agreementsInfo.
  ///
  /// In en, this message translates to:
  /// **'Here you can find the list of agreements you confirmed during your registration to the application'**
  String get agreementsInfo;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @languageSettings.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSettings;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languagePolish.
  ///
  /// In en, this message translates to:
  /// **'Polish'**
  String get languagePolish;

  /// No description provided for @loginWelcomeReady.
  ///
  /// In en, this message translates to:
  /// **'Are you ready?'**
  String get loginWelcomeReady;

  /// No description provided for @loginWelcomeBegin.
  ///
  /// In en, this message translates to:
  /// **'Let\'s begin your'**
  String get loginWelcomeBegin;

  /// No description provided for @loginWelcomeJourney.
  ///
  /// In en, this message translates to:
  /// **'journey'**
  String get loginWelcomeJourney;

  /// No description provided for @loginLogInSignUp.
  ///
  /// In en, this message translates to:
  /// **'Log In / Sign Up'**
  String get loginLogInSignUp;

  /// No description provided for @loginOr.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get loginOr;

  /// No description provided for @loginContinueGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get loginContinueGoogle;

  /// No description provided for @loginContinueApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get loginContinueApple;

  /// No description provided for @progressReady.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get progressReady;

  /// No description provided for @progressNextCheckIn.
  ///
  /// In en, this message translates to:
  /// **'Next check-in: '**
  String get progressNextCheckIn;

  /// No description provided for @progressTrackDaily.
  ///
  /// In en, this message translates to:
  /// **'Track your daily progress\nthrough the program'**
  String get progressTrackDaily;

  /// No description provided for @progressTimeLeft.
  ///
  /// In en, this message translates to:
  /// **'Here you can track\nhow much time is\nleft till the next\nexercise.'**
  String get progressTimeLeft;

  /// No description provided for @chatStartConversation.
  ///
  /// In en, this message translates to:
  /// **'Start a conversation\nwith TrueMe Coach'**
  String get chatStartConversation;

  /// No description provided for @chatStartConversationCompleted.
  ///
  /// In en, this message translates to:
  /// **'Start a conversation\nwith ✨TrueMe Coach✨'**
  String get chatStartConversationCompleted;

  /// No description provided for @chatRememberWaiting.
  ///
  /// In en, this message translates to:
  /// **'Remember, while\nwaiting for the next\nexercise you can\nalways talk to TrueMe\nCoach'**
  String get chatRememberWaiting;

  /// No description provided for @chatRememberWaitingCompleted.
  ///
  /// In en, this message translates to:
  /// **'Remember, while\nwaiting for the next\nexercise you can\nalways talk to ✨TrueMe\nCoach✨'**
  String get chatRememberWaitingCompleted;

  /// No description provided for @impactMetricAssessment.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get impactMetricAssessment;

  /// No description provided for @impactMetricSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get impactMetricSubmit;

  /// No description provided for @impactMetricNotFound.
  ///
  /// In en, this message translates to:
  /// **'Impact metric not found'**
  String get impactMetricNotFound;

  /// No description provided for @impactMetricFeelStressed.
  ///
  /// In en, this message translates to:
  /// **'I feel stressed\nall the time'**
  String get impactMetricFeelStressed;

  /// No description provided for @impactMetricLifeEasy.
  ///
  /// In en, this message translates to:
  /// **'Life feels easy\nand manageable'**
  String get impactMetricLifeEasy;

  /// No description provided for @reportIssueTitle.
  ///
  /// In en, this message translates to:
  /// **'What would you like to report to us?'**
  String get reportIssueTitle;

  /// No description provided for @reportIssueChoose.
  ///
  /// In en, this message translates to:
  /// **'Choose your issue'**
  String get reportIssueChoose;

  /// No description provided for @reportIssueEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get reportIssueEmailHint;

  /// No description provided for @reportIssueDescribeHint.
  ///
  /// In en, this message translates to:
  /// **'Describe the issue...'**
  String get reportIssueDescribeHint;

  /// No description provided for @reportIssueSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get reportIssueSubmit;

  /// No description provided for @forceUpdateRequired.
  ///
  /// In en, this message translates to:
  /// **'Update required!'**
  String get forceUpdateRequired;

  /// No description provided for @forceUpdateButton.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get forceUpdateButton;

  /// No description provided for @settingsDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete the account'**
  String get settingsDeleteAccount;

  /// No description provided for @settingsContactSupport.
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get settingsContactSupport;

  /// No description provided for @settingsTester.
  ///
  /// In en, this message translates to:
  /// **'Tester'**
  String get settingsTester;

  /// No description provided for @settingsCleanOnboardingDismiss.
  ///
  /// In en, this message translates to:
  /// **'CLEAN ONBOARDING DISMISS'**
  String get settingsCleanOnboardingDismiss;

  /// No description provided for @settingsMarkOnboardingCompleted.
  ///
  /// In en, this message translates to:
  /// **'MARK ONBOARDING COMPLETED'**
  String get settingsMarkOnboardingCompleted;

  /// No description provided for @forceUpdateMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re using an outdated version of TrueMe. Please update to continue.'**
  String get forceUpdateMessage;

  /// No description provided for @chatBotName.
  ///
  /// In en, this message translates to:
  /// **'TrueMe'**
  String get chatBotName;

  /// No description provided for @chatBotThinking.
  ///
  /// In en, this message translates to:
  /// **'I\'m thinking...'**
  String get chatBotThinking;

  /// No description provided for @chatUserDefault.
  ///
  /// In en, this message translates to:
  /// **'Anonymous explorer'**
  String get chatUserDefault;

  /// No description provided for @chatReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get chatReply;

  /// No description provided for @chatReplyDots.
  ///
  /// In en, this message translates to:
  /// **'Reply...'**
  String get chatReplyDots;

  /// No description provided for @reportIssueChooseYourIssue.
  ///
  /// In en, this message translates to:
  /// **'Choose your issue'**
  String get reportIssueChooseYourIssue;

  /// No description provided for @reportIssueInappropriate.
  ///
  /// In en, this message translates to:
  /// **'Inappropriate content'**
  String get reportIssueInappropriate;

  /// No description provided for @reportIssueError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get reportIssueError;

  /// No description provided for @reportIssueOffensive.
  ///
  /// In en, this message translates to:
  /// **'Offensive content'**
  String get reportIssueOffensive;

  /// No description provided for @reportIssueOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get reportIssueOther;

  /// No description provided for @buttonStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get buttonStart;

  /// No description provided for @buttonSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get buttonSubmit;

  /// No description provided for @buttonTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get buttonTryAgain;

  /// No description provided for @buttonGoToExercise.
  ///
  /// In en, this message translates to:
  /// **'Go to Exercise'**
  String get buttonGoToExercise;

  /// No description provided for @buttonStartImpactMetric.
  ///
  /// In en, this message translates to:
  /// **'Start Impact Metric'**
  String get buttonStartImpactMetric;

  /// No description provided for @buttonGiveFeedback.
  ///
  /// In en, this message translates to:
  /// **'Give Feedback'**
  String get buttonGiveFeedback;

  /// No description provided for @buttonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get buttonContinue;

  /// No description provided for @menuTitle.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menuTitle;

  /// No description provided for @menuReportIssue.
  ///
  /// In en, this message translates to:
  /// **'Report Issue'**
  String get menuReportIssue;

  /// No description provided for @menuSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get menuSettings;

  /// No description provided for @menuEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get menuEvents;

  /// No description provided for @menuPrograms.
  ///
  /// In en, this message translates to:
  /// **'Programs'**
  String get menuPrograms;

  /// No description provided for @errorSomethingWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops, something\'s not quite right.'**
  String get errorSomethingWrong;

  /// No description provided for @errorWeAreHere.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, we\'re here to help!'**
  String get errorWeAreHere;

  /// No description provided for @errorCouldNotOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link.'**
  String get errorCouldNotOpenLink;

  /// No description provided for @errorPleaseSelectIssueType.
  ///
  /// In en, this message translates to:
  /// **'Please select an issue type'**
  String get errorPleaseSelectIssueType;

  /// No description provided for @errorPleaseFillAllFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all fields correctly'**
  String get errorPleaseFillAllFields;

  /// No description provided for @loadingMessage.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loadingMessage;

  /// No description provided for @successReportSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Report submitted successfully'**
  String get successReportSubmitted;

  /// No description provided for @successOnboardingCleared.
  ///
  /// In en, this message translates to:
  /// **'Onboarding state cleared! Restart app to see onboarding again.'**
  String get successOnboardingCleared;

  /// No description provided for @successOnboardingCompleted.
  ///
  /// In en, this message translates to:
  /// **'Onboarding marked as completed!'**
  String get successOnboardingCompleted;

  /// No description provided for @languageChangeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Language changed successfully!'**
  String get languageChangeSuccess;

  /// No description provided for @languageChangeError.
  ///
  /// In en, this message translates to:
  /// **'Failed to change language.'**
  String get languageChangeError;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pl': return AppLocalizationsPl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
