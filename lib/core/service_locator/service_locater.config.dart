// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/authentication_service/authentication_service_impl.dart'
    as _i725;
import '../../features/auth/data/user_token_repository.dart' as _i939;
import '../../features/auth/domain/authentication_repository/authentication_repository_impl.dart'
    as _i92;
import '../../features/authorization/authorization_bloc.dart' as _i358;
import '../../features/chatbot/bloc/chatbot_screen_bloc.dart' as _i1058;
import '../../features/chatbot/data/chat_history_repository.dart' as _i13;
import '../../features/chatbot/data/chat_service.dart' as _i894;
import '../../features/chatbot/data/report_issue_service.dart' as _i1058;
import '../../features/chatbot/utils/chatbot_utils.dart' as _i401;
import '../../features/exercise/bloc/exercise_page_bloc.dart' as _i498;
import '../../features/exercise/data/exercise_repository.dart' as _i22;
import '../../features/feedback/bloc/feedback_bloc.dart' as _i257;
import '../../features/feedback/data/block_feedback_repository.dart' as _i736;
import '../../features/impact_metric/bloc/impact_metric_bloc.dart' as _i436;
import '../../features/impact_metric/data/impact_metric_repository.dart'
    as _i1030;
import '../../features/login/bloc/login_screen_bloc.dart' as _i102;
import '../../features/menu/bloc/menu_screen_bloc.dart' as _i410;
import '../../features/report_issue/bloc/report_issue_bloc.dart' as _i924;
import '../../features/settings/bloc/settings_bloc.dart' as _i33;
import '../../features/splash_screen/bloc/splash_screen_bloc.dart' as _i592;
import '../../features/splash_screen/data/program_progress_repository.dart'
    as _i1045;
import '../../features/tester/data/tester_service/tester_service_impl.dart'
    as _i549;
import '../../features/user/cubit/user_cubit.dart' as _i953;
import '../../features/user/data/user_repository.dart' as _i176;
import '../blocs/language_bloc.dart' as _i248;
import '../network/rest_services.dart' as _i741;
import '../services/app_tracking_service.dart' as _i57;
import '../services/app_version_service.dart' as _i212;
import '../services/auth/base_auth.dart' as _i794;
import '../services/business_metrics_service.dart' as _i576;
import '../services/global_config_service/global_config_service.dart' as _i759;
import '../services/language_service.dart' as _i819;
import '../services/mixpanel_service.dart' as _i495;
import '../services/onboarding_service.dart' as _i854;
import '../services/privacy_consent_service.dart' as _i343;
import '../services/sentry_service.dart' as _i343;
import '../services/shared_preferences_service.dart' as _i29;
import '../services/stage_service.dart' as _i380;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i759.GeneralConfigApplication>(
      () => _i759.GeneralConfigApplication());
  gh.factory<_i1058.ReportIssueService>(() => _i1058.ReportIssueService());
  gh.factory<_i22.ExerciseRepository>(() => _i22.ExerciseRepository());
  gh.factory<_i736.BlockFeedbackRepository>(
      () => _i736.BlockFeedbackRepository());
  gh.factory<_i1030.ImpactMetricRepository>(
      () => _i1030.ImpactMetricRepository());
  gh.factory<_i410.MenuScreenBloc>(() => _i410.MenuScreenBloc());
  gh.factory<_i1045.ProgramProgressRepository>(
      () => _i1045.ProgramProgressRepository());
  gh.factory<_i176.UserRepository>(() => _i176.UserRepository());
  gh.singleton<_i212.AppVersionService>(() => _i212.AppVersionService());
  gh.singleton<_i380.StageService>(() => _i380.StageService());
  gh.lazySingleton<_i741.Api>(() => _i741.Api());
  gh.lazySingleton<_i57.AppTrackingService>(() => _i57.AppTrackingService());
  gh.lazySingleton<_i576.BusinessMetricsService>(
      () => _i576.BusinessMetricsService());
  gh.lazySingleton<_i495.MixpanelService>(() => _i495.MixpanelService());
  gh.lazySingleton<_i343.PrivacyConsentService>(
      () => _i343.PrivacyConsentService());
  gh.lazySingleton<_i343.SentryService>(() => _i343.SentryService());
  gh.factory<_i953.UserCubit>(
      () => _i953.UserCubit(gh<_i176.UserRepository>()));
  gh.factory<_i725.LoginService>(() => _i725.LoginServiceImpl());
  gh.factory<_i924.ReportIssueBloc>(
      () => _i924.ReportIssueBloc(gh<_i1058.ReportIssueService>()));
  gh.factory<_i549.TesterService>(() => _i549.TesterServiceImpl());
  gh.factory<_i854.OnboardingService>(
      () => _i854.OnboardingService(gh<_i460.SharedPreferences>()));
  gh.factory<_i257.FeedbackBloc>(
      () => _i257.FeedbackBloc(gh<_i736.BlockFeedbackRepository>()));
  gh.lazySingleton<_i29.SharedPreferencesService>(
      () => _i29.SharedPreferencesService(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i939.UserTokenRepository>(
      () => _i939.UserTokenRepositoryImpl(gh<_i29.SharedPreferencesService>()));
  gh.factory<_i33.SettingsBloc>(() => _i33.SettingsBloc(
        gh<_i176.UserRepository>(),
        gh<_i212.AppVersionService>(),
        gh<_i29.SharedPreferencesService>(),
        gh<_i939.UserTokenRepository>(),
      ));
  gh.lazySingleton<_i819.LanguageService>(() => _i819.LanguageService(
        gh<_i29.SharedPreferencesService>(),
        gh<_i176.UserRepository>(),
      ));
  gh.factory<_i92.AuthenticationRepository>(
      () => _i92.AuthenticationRepositoryImpl(
            gh<_i725.LoginService>(),
            gh<_i939.UserTokenRepository>(),
            gh<_i29.SharedPreferencesService>(),
          ));
  gh.factory<_i13.ChatHistoryRepository>(
      () => _i13.ChatHistoryRepository(gh<_i939.UserTokenRepository>()));
  gh.singleton<_i358.AuthorizationBloc>(
      () => _i358.AuthorizationBloc(gh<_i939.UserTokenRepository>()));
  gh.factory<_i894.ChatService>(() => _i894.ChatService(
        gh<_i939.UserTokenRepository>(),
        gh<_i819.LanguageService>(),
      ));
  gh.factory<_i248.LanguageBloc>(
      () => _i248.LanguageBloc(gh<_i819.LanguageService>()));
  gh.factory<_i794.BaseAuth>(() => _i794.BaseAuth(gh<_i819.LanguageService>()));
  gh.factory<_i592.SplashScreenBloc>(() => _i592.SplashScreenBloc(
        gh<_i92.AuthenticationRepository>(),
        gh<_i939.UserTokenRepository>(),
        gh<_i894.ChatService>(),
        gh<_i380.StageService>(),
        gh<_i358.AuthorizationBloc>(),
      ));
  gh.factory<_i436.ImpactMetricBloc>(
      () => _i436.ImpactMetricBloc(gh<_i894.ChatService>()));
  gh.factory<_i498.ExercisePageBloc>(() => _i498.ExercisePageBloc(
        gh<_i22.ExerciseRepository>(),
        gh<_i894.ChatService>(),
        gh<_i380.StageService>(),
      ));
  gh.factoryParam<_i1058.ChatbotScreenBloc, _i401.ChatbotRouteParams?, dynamic>(
      (
    chatbotRouteParams,
    _,
  ) =>
          _i1058.ChatbotScreenBloc(
            chatbotRouteParams,
            gh<_i894.ChatService>(),
            gh<_i13.ChatHistoryRepository>(),
            gh<_i29.SharedPreferencesService>(),
            gh<_i380.StageService>(),
          ));
  gh.factory<_i102.LoginScreenBloc>(() => _i102.LoginScreenBloc(
        gh<_i794.BaseAuth>(),
        gh<_i92.AuthenticationRepository>(),
      ));
  return getIt;
}
