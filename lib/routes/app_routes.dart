import 'package:photo_edit/presentation/splash_screen/splash_screen.dart';
import 'package:photo_edit/presentation/splash_screen/binding/splash_binding.dart';
import 'package:photo_edit/presentation/login_screen/login_screen.dart';
import 'package:photo_edit/presentation/login_screen/binding/login_binding.dart';
import 'package:photo_edit/presentation/signup_screen/signup_screen.dart';
import 'package:photo_edit/presentation/signup_screen/binding/signup_binding.dart';
import 'package:photo_edit/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:photo_edit/presentation/forget_password_screen/binding/forget_password_binding.dart';
import 'package:photo_edit/presentation/forget_password_three_screen/forget_password_three_screen.dart';
import 'package:photo_edit/presentation/forget_password_three_screen/binding/forget_password_three_binding.dart';
import 'package:photo_edit/presentation/forget_password_one_screen/forget_password_one_screen.dart';
import 'package:photo_edit/presentation/forget_password_one_screen/binding/forget_password_one_binding.dart';
import 'package:photo_edit/presentation/forget_password_two_screen/forget_password_two_screen.dart';
import 'package:photo_edit/presentation/forget_password_two_screen/binding/forget_password_two_binding.dart';
import 'package:photo_edit/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:photo_edit/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:photo_edit/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:photo_edit/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:photo_edit/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:photo_edit/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:photo_edit/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:photo_edit/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:photo_edit/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:photo_edit/presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import 'package:photo_edit/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:photo_edit/presentation/onboarding_five_screen/binding/onboarding_five_binding.dart';
import 'package:photo_edit/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:photo_edit/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:photo_edit/presentation/speech_to_text_screen/speech_to_text_screen.dart';
import 'package:photo_edit/presentation/speech_to_text_screen/binding/speech_to_text_binding.dart';
import 'package:photo_edit/presentation/speech_to_text_one_screen/speech_to_text_one_screen.dart';
import 'package:photo_edit/presentation/speech_to_text_one_screen/binding/speech_to_text_one_binding.dart';
import 'package:photo_edit/presentation/remove_background_two_screen/remove_background_two_screen.dart';
import 'package:photo_edit/presentation/remove_background_two_screen/binding/remove_background_two_binding.dart';
import 'package:photo_edit/presentation/remove_background_screen/remove_background_screen.dart';
import 'package:photo_edit/presentation/remove_background_screen/binding/remove_background_binding.dart';
import 'package:photo_edit/presentation/remove_background_one_screen/remove_background_one_screen.dart';
import 'package:photo_edit/presentation/remove_background_one_screen/binding/remove_background_one_binding.dart';
import 'package:photo_edit/presentation/photo_edit_screen/photo_edit_screen.dart';
import 'package:photo_edit/presentation/photo_edit_screen/binding/photo_edit_binding.dart';
import 'package:photo_edit/presentation/add_bg_solid_color_screen/add_bg_solid_color_screen.dart';
import 'package:photo_edit/presentation/add_bg_solid_color_screen/binding/add_bg_solid_color_binding.dart';
import 'package:photo_edit/presentation/add_background_screen/add_background_screen.dart';
import 'package:photo_edit/presentation/add_background_screen/binding/add_background_binding.dart';
import 'package:photo_edit/presentation/filter_screen/filter_screen.dart';
import 'package:photo_edit/presentation/filter_screen/binding/filter_binding.dart';
import 'package:photo_edit/presentation/stock_image_screen/stock_image_screen.dart';
import 'package:photo_edit/presentation/stock_image_screen/binding/stock_image_binding.dart';
import 'package:photo_edit/presentation/stock_image_one_tab_container_screen/stock_image_one_tab_container_screen.dart';
import 'package:photo_edit/presentation/stock_image_one_tab_container_screen/binding/stock_image_one_tab_container_binding.dart';
import 'package:photo_edit/presentation/stock_image_two_screen/stock_image_two_screen.dart';
import 'package:photo_edit/presentation/stock_image_two_screen/binding/stock_image_two_binding.dart';
import 'package:photo_edit/presentation/adjust_one_screen/adjust_one_screen.dart';
import 'package:photo_edit/presentation/adjust_one_screen/binding/adjust_one_binding.dart';
import 'package:photo_edit/presentation/adjust_screen/adjust_screen.dart';
import 'package:photo_edit/presentation/adjust_screen/binding/adjust_binding.dart';
import 'package:photo_edit/presentation/image_to_text_screen/image_to_text_screen.dart';
import 'package:photo_edit/presentation/image_to_text_screen/binding/image_to_text_binding.dart';
import 'package:photo_edit/presentation/image_to_text_one_screen/image_to_text_one_screen.dart';
import 'package:photo_edit/presentation/image_to_text_one_screen/binding/image_to_text_one_binding.dart';
import 'package:photo_edit/presentation/cover_letter_one_screen/cover_letter_one_screen.dart';
import 'package:photo_edit/presentation/cover_letter_one_screen/binding/cover_letter_one_binding.dart';
import 'package:photo_edit/presentation/cover_letter_screen/cover_letter_screen.dart';
import 'package:photo_edit/presentation/cover_letter_screen/binding/cover_letter_binding.dart';
import 'package:photo_edit/presentation/text_to_speech_two_screen/text_to_speech_two_screen.dart';
import 'package:photo_edit/presentation/text_to_speech_two_screen/binding/text_to_speech_two_binding.dart';
import 'package:photo_edit/presentation/text_to_speech_screen/text_to_speech_screen.dart';
import 'package:photo_edit/presentation/text_to_speech_screen/binding/text_to_speech_binding.dart';
import 'package:photo_edit/presentation/text_to_speech_one_screen/text_to_speech_one_screen.dart';
import 'package:photo_edit/presentation/text_to_speech_one_screen/binding/text_to_speech_one_binding.dart';
import 'package:photo_edit/presentation/settings_screen/settings_screen.dart';
import 'package:photo_edit/presentation/settings_screen/binding/settings_binding.dart';
import 'package:photo_edit/presentation/app_drawer_screen/app_drawer_screen.dart';
import 'package:photo_edit/presentation/app_drawer_screen/binding/app_drawer_binding.dart';
import 'package:photo_edit/presentation/profile_screen/profile_screen.dart';
import 'package:photo_edit/presentation/profile_screen/binding/profile_binding.dart';
import 'package:photo_edit/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:photo_edit/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPasswordThreeScreen =
      '/forget_password_three_screen';

  static const String forgetPasswordOneScreen = '/forget_password_one_screen';

  static const String forgetPasswordTwoScreen = '/forget_password_two_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String speechToTextScreen = '/speech_to_text_screen';

  static const String speechToTextOneScreen = '/speech_to_text_one_screen';

  static const String removeBackgroundTwoScreen =
      '/remove_background_two_screen';

  static const String removeBackgroundScreen = '/remove_background_screen';

  static const String removeBackgroundOneScreen =
      '/remove_background_one_screen';

  static const String photoEditScreen = '/photo_edit_screen';

  static const String addBgSolidColorScreen = '/add_bg_solid_color_screen';

  static const String addBackgroundScreen = '/add_background_screen';

  static const String filterScreen = '/filter_screen';

  static const String stockImageScreen = '/stock_image_screen';

  static const String stockImageOnePage = '/stock_image_one_page';

  static const String stockImageOneTabContainerScreen =
      '/stock_image_one_tab_container_screen';

  static const String stockImageTwoScreen = '/stock_image_two_screen';

  static const String adjustOneScreen = '/adjust_one_screen';

  static const String adjustScreen = '/adjust_screen';

  static const String imageToTextScreen = '/image_to_text_screen';

  static const String imageToTextOneScreen = '/image_to_text_one_screen';

  static const String coverLetterOneScreen = '/cover_letter_one_screen';

  static const String coverLetterScreen = '/cover_letter_screen';

  static const String textToSpeechTwoScreen = '/text_to_speech_two_screen';

  static const String textToSpeechScreen = '/text_to_speech_screen';

  static const String textToSpeechOneScreen = '/text_to_speech_one_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appDrawerScreen = '/app_drawer_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordThreeScreen,
      page: () => ForgetPasswordThreeScreen(),
      bindings: [
        ForgetPasswordThreeBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordOneScreen,
      page: () => ForgetPasswordOneScreen(),
      bindings: [
        ForgetPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordTwoScreen,
      page: () => ForgetPasswordTwoScreen(),
      bindings: [
        ForgetPasswordTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onboardingFourScreen,
      page: () => OnboardingFourScreen(),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: onboardingFiveScreen,
      page: () => OnboardingFiveScreen(),
      bindings: [
        OnboardingFiveBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: speechToTextScreen,
      page: () => SpeechToTextScreen(),
      bindings: [
        SpeechToTextBinding(),
      ],
    ),
    GetPage(
      name: speechToTextOneScreen,
      page: () => SpeechToTextOneScreen(),
      bindings: [
        SpeechToTextOneBinding(),
      ],
    ),
    GetPage(
      name: removeBackgroundTwoScreen,
      page: () => RemoveBackgroundTwoScreen(),
      bindings: [
        RemoveBackgroundTwoBinding(),
      ],
    ),
    GetPage(
      name: removeBackgroundScreen,
      page: () => RemoveBackgroundScreen(),
      bindings: [
        RemoveBackgroundBinding(),
      ],
    ),
    GetPage(
      name: removeBackgroundOneScreen,
      page: () => RemoveBackgroundOneScreen(),
      bindings: [
        RemoveBackgroundOneBinding(),
      ],
    ),
    GetPage(
      name: photoEditScreen,
      page: () => PhotoEditScreen(),
      bindings: [
        PhotoEditBinding(),
      ],
    ),
    GetPage(
      name: addBgSolidColorScreen,
      page: () => AddBgSolidColorScreen(),
      bindings: [
        AddBgSolidColorBinding(),
      ],
    ),
    GetPage(
      name: addBackgroundScreen,
      page: () => AddBackgroundScreen(),
      bindings: [
        AddBackgroundBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: stockImageScreen,
      page: () => StockImageScreen(),
      bindings: [
        StockImageBinding(),
      ],
    ),
    GetPage(
      name: stockImageOneTabContainerScreen,
      page: () => StockImageOneTabContainerScreen(),
      bindings: [
        StockImageOneTabContainerBinding(),
      ],
    ),
    GetPage(
      name: stockImageTwoScreen,
      page: () => StockImageTwoScreen(),
      bindings: [
        StockImageTwoBinding(),
      ],
    ),
    GetPage(
      name: adjustOneScreen,
      page: () => AdjustOneScreen(),
      bindings: [
        AdjustOneBinding(),
      ],
    ),
    GetPage(
      name: adjustScreen,
      page: () => AdjustScreen(),
      bindings: [
        AdjustBinding(),
      ],
    ),
    GetPage(
      name: imageToTextScreen,
      page: () => ImageToTextScreen(),
      bindings: [
        ImageToTextBinding(),
      ],
    ),
    GetPage(
      name: imageToTextOneScreen,
      page: () => ImageToTextOneScreen(),
      bindings: [
        ImageToTextOneBinding(),
      ],
    ),
    GetPage(
      name: coverLetterOneScreen,
      page: () => CoverLetterOneScreen(),
      bindings: [
        CoverLetterOneBinding(),
      ],
    ),
    GetPage(
      name: coverLetterScreen,
      page: () => CoverLetterScreen(),
      bindings: [
        CoverLetterBinding(),
      ],
    ),
    GetPage(
      name: textToSpeechTwoScreen,
      page: () => TextToSpeechTwoScreen(),
      bindings: [
        TextToSpeechTwoBinding(),
      ],
    ),
    GetPage(
      name: textToSpeechScreen,
      page: () => TextToSpeechScreen(),
      bindings: [
        TextToSpeechBinding(),
      ],
    ),
    GetPage(
      name: textToSpeechOneScreen,
      page: () => TextToSpeechOneScreen(),
      bindings: [
        TextToSpeechOneBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: appDrawerScreen,
      page: () => AppDrawerScreen(),
      bindings: [
        AppDrawerBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
