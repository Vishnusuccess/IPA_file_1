// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'True.me';

  @override
  String get loginScreenTitle => 'Login';

  @override
  String get signupScreenTitle => 'Sign Up';

  @override
  String get forgotPasswordScreenTitle => 'Reset Password';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Password';

  @override
  String get confirmPasswordHint => 'Confirm Password';

  @override
  String get loginButton => 'Login';

  @override
  String get signupButton => 'Sign Up';

  @override
  String get resetPasswordButton => 'Reset Password';

  @override
  String get noAccountText => 'Don\'t have an account? Sign Up';

  @override
  String get haveAccountText => 'Already have an account? Login';

  @override
  String get backToLoginText => 'Back to Login';

  @override
  String get forgotPasswordText => 'Forgot Password?';

  @override
  String get emailValidationError => 'Enter an email';

  @override
  String get passwordValidationError => 'Password must be at least 6 characters';

  @override
  String get passwordMatchError => 'Passwords do not match';

  @override
  String get authErrorMessage => 'An error occurred during authentication';

  @override
  String get verifyEmailMessage => 'Please verify your email to proceed.';

  @override
  String get passwordResetMessage => 'Password reset email sent';

  @override
  String userErrorMessage(String error) {
    return 'Error: <b>$error</b>';
  }

  @override
  String get chatRoute => 'Chat';

  @override
  String get chatScreenTitle => 'Chat';

  @override
  String get logoutButton => 'Logout';

  @override
  String get goToNextPageButton => 'Go to next page';

  @override
  String get exerciseMoodCheckTitle => 'Mood check';

  @override
  String get exerciseChooseEmotions => 'Choose the emotions that were present.';

  @override
  String get exerciseSubmitButton => 'Submit';

  @override
  String get exerciseNoData => 'No exercise data available';

  @override
  String get exerciseNotFound => 'Exercise not found';

  @override
  String get exerciseSelectAnswerError => 'Please select at least one answer';

  @override
  String exerciseDayTimeFormat(int dayNumber) {
    return 'Day $dayNumber';
  }

  @override
  String exerciseDaysLeftFormat(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '<b>$days</b> days left',
      one: '<b>1</b> day left',
      zero: 'No days left',
    );
    return '$_temp0';
  }

  @override
  String get feedbackScreenTitle => 'Feedback';

  @override
  String get feedbackWeeklyPrompt => 'Tell us more about your week:';

  @override
  String get feedbackSubmitButton => 'Submit';

  @override
  String get feedbackSkipOption => 'Prefer not to answer';

  @override
  String get feedbackSuccessMessage => 'Feedback submitted successfully!';

  @override
  String get feedbackIncompleteError => 'Please rate all questions before submitting.';

  @override
  String get feedbackSkippedMessage => 'Feedback submission skipped.';

  @override
  String get feedbackNotFound => 'Feedback not found';

  @override
  String get settingsScreenTitle => 'Settings';

  @override
  String get settingsProfile => 'Profile';

  @override
  String get settingsHelp => 'Help';

  @override
  String get settingsAgreements => 'Agreements';

  @override
  String get logoutButtonText => 'Log out';

  @override
  String get deleteAccountButtonText => 'Delete account';

  @override
  String get deleteAccountConfirmationTitle => 'Delete Account Confirmation';

  @override
  String get deleteAccountConfirmationMessage => 'Are you sure you want to delete your account?';

  @override
  String get deleteAccountCancelButton => 'Cancel';

  @override
  String get deleteAccountConfirmButton => 'Confirm';

  @override
  String get deletedAccountMessage => 'Account was deleted';

  @override
  String get agreementsInfo => 'Here you can find the list of agreements you confirmed during your registration to the application';

  @override
  String get termsAndConditions => 'Terms and Conditions';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get languageSettings => 'Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languagePolish => 'Polish';

  @override
  String get loginWelcomeReady => 'Are you ready?';

  @override
  String get loginWelcomeBegin => 'Let\'s begin your';

  @override
  String get loginWelcomeJourney => 'journey';

  @override
  String get loginLogInSignUp => 'Log In / Sign Up';

  @override
  String get loginOr => 'or';

  @override
  String get loginContinueGoogle => 'Continue with Google';

  @override
  String get loginContinueApple => 'Continue with Apple';

  @override
  String get progressReady => 'Ready';

  @override
  String get progressNextCheckIn => 'Next check-in: ';

  @override
  String get progressTrackDaily => 'Track your daily progress\nthrough the program';

  @override
  String get progressTimeLeft => 'Here you can track\nhow much time is\nleft till the next\nexercise.';

  @override
  String get chatStartConversation => 'Start a conversation\nwith TrueMe Coach';

  @override
  String get chatStartConversationCompleted => 'Start a conversation\nwith ✨TrueMe Coach✨';

  @override
  String get chatRememberWaiting => 'Remember, while\nwaiting for the next\nexercise you can\nalways talk to TrueMe\nCoach';

  @override
  String get chatRememberWaitingCompleted => 'Remember, while\nwaiting for the next\nexercise you can\nalways talk to ✨TrueMe\nCoach✨';

  @override
  String get impactMetricAssessment => 'Assessment';

  @override
  String get impactMetricSubmit => 'Submit';

  @override
  String get impactMetricNotFound => 'Impact metric not found';

  @override
  String get impactMetricFeelStressed => 'I feel stressed\nall the time';

  @override
  String get impactMetricLifeEasy => 'Life feels easy\nand manageable';

  @override
  String get reportIssueTitle => 'What would you like to report to us?';

  @override
  String get reportIssueChoose => 'Choose your issue';

  @override
  String get reportIssueEmailHint => 'Your email';

  @override
  String get reportIssueDescribeHint => 'Describe the issue...';

  @override
  String get reportIssueSubmit => 'Submit';

  @override
  String get forceUpdateRequired => 'Update required!';

  @override
  String get forceUpdateButton => 'Update';

  @override
  String get settingsDeleteAccount => 'Delete the account';

  @override
  String get settingsContactSupport => 'Contact Support';

  @override
  String get settingsTester => 'Tester';

  @override
  String get settingsCleanOnboardingDismiss => 'CLEAN ONBOARDING DISMISS';

  @override
  String get settingsMarkOnboardingCompleted => 'MARK ONBOARDING COMPLETED';

  @override
  String get forceUpdateMessage => 'You\'re using an outdated version of TrueMe. Please update to continue.';

  @override
  String get chatBotName => 'TrueMe';

  @override
  String get chatBotThinking => 'I\'m thinking...';

  @override
  String get chatUserDefault => 'Anonymous explorer';

  @override
  String get chatReply => 'Reply';

  @override
  String get chatReplyDots => 'Reply...';

  @override
  String get reportIssueChooseYourIssue => 'Choose your issue';

  @override
  String get reportIssueInappropriate => 'Inappropriate content';

  @override
  String get reportIssueError => 'Error';

  @override
  String get reportIssueOffensive => 'Offensive content';

  @override
  String get reportIssueOther => 'Other';

  @override
  String get buttonStart => 'Start';

  @override
  String get buttonSubmit => 'Submit';

  @override
  String get buttonTryAgain => 'Try Again';

  @override
  String get buttonGoToExercise => 'Go to Exercise';

  @override
  String get buttonStartImpactMetric => 'Start Impact Metric';

  @override
  String get buttonGiveFeedback => 'Give Feedback';

  @override
  String get buttonContinue => 'Continue';

  @override
  String get menuTitle => 'Menu';

  @override
  String get menuReportIssue => 'Report Issue';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuEvents => 'Events';

  @override
  String get menuPrograms => 'Programs';

  @override
  String get errorSomethingWrong => 'Oops, something\'s not quite right.';

  @override
  String get errorWeAreHere => 'Don\'t worry, we\'re here to help!';

  @override
  String get errorCouldNotOpenLink => 'Could not open the link.';

  @override
  String get errorPleaseSelectIssueType => 'Please select an issue type';

  @override
  String get errorPleaseFillAllFields => 'Please fill all fields correctly';

  @override
  String get loadingMessage => 'Loading...';

  @override
  String get successReportSubmitted => 'Report submitted successfully';

  @override
  String get successOnboardingCleared => 'Onboarding state cleared! Restart app to see onboarding again.';

  @override
  String get successOnboardingCompleted => 'Onboarding marked as completed!';

  @override
  String get languageChangeSuccess => 'Language changed successfully!';

  @override
  String get languageChangeError => 'Failed to change language.';
}
