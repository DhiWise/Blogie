import 'package:blogie/presentation/drafts_screen/drafts_screen.dart';
import 'package:blogie/presentation/drafts_screen/binding/drafts_binding.dart';
import 'package:blogie/presentation/blogs_screen/blogs_screen.dart';
import 'package:blogie/presentation/blogs_screen/binding/blogs_binding.dart';
import 'package:blogie/presentation/succesfull_screen/succesfull_screen.dart';
import 'package:blogie/presentation/succesfull_screen/binding/succesfull_binding.dart';
import 'package:blogie/presentation/post_screen/post_screen.dart';
import 'package:blogie/presentation/post_screen/binding/post_binding.dart';
import 'package:blogie/presentation/writetwo_screen/writetwo_screen.dart';
import 'package:blogie/presentation/writetwo_screen/binding/writetwo_binding.dart';
import 'package:blogie/presentation/setting_screen/setting_screen.dart';
import 'package:blogie/presentation/setting_screen/binding/setting_binding.dart';
import 'package:blogie/presentation/blogone_screen/blogone_screen.dart';
import 'package:blogie/presentation/blogone_screen/binding/blogone_binding.dart';
import 'package:blogie/presentation/topicsone_screen/topicsone_screen.dart';
import 'package:blogie/presentation/topicsone_screen/binding/topicsone_binding.dart';
import 'package:blogie/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:blogie/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:blogie/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:blogie/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:blogie/presentation/on_boardingone_screen/on_boardingone_screen.dart';
import 'package:blogie/presentation/on_boardingone_screen/binding/on_boardingone_binding.dart';
import 'package:blogie/presentation/started_screen/started_screen.dart';
import 'package:blogie/presentation/started_screen/binding/started_binding.dart';
import 'package:blogie/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:blogie/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String draftsScreen = '/drafts_screen';

  static String blogsScreen = '/blogs_screen';

  static String succesfullScreen = '/succesfull_screen';

  static String postScreen = '/post_screen';

  static String writetwoScreen = '/writetwo_screen';

  static String settingScreen = '/setting_screen';

  static String blogoneScreen = '/blogone_screen';

  static String topicsoneScreen = '/topicsone_screen';

  static String signUpScreen = '/sign_up_screen';

  static String signInScreen = '/sign_in_screen';

  static String onBoardingoneScreen = '/on_boardingone_screen';

  static String startedScreen = '/started_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: draftsScreen,
      page: () => DraftsScreen(),
      bindings: [
        DraftsBinding(),
      ],
    ),
    GetPage(
      name: blogsScreen,
      page: () => BlogsScreen(),
      bindings: [
        BlogsBinding(),
      ],
    ),
    GetPage(
      name: succesfullScreen,
      page: () => SuccesfullScreen(),
      bindings: [
        SuccesfullBinding(),
      ],
    ),
    GetPage(
      name: postScreen,
      page: () => PostScreen(),
      bindings: [
        PostBinding(),
      ],
    ),
    GetPage(
      name: writetwoScreen,
      page: () => WritetwoScreen(),
      bindings: [
        WritetwoBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: blogoneScreen,
      page: () => BlogoneScreen(),
      bindings: [
        BlogoneBinding(),
      ],
    ),
    GetPage(
      name: topicsoneScreen,
      page: () => TopicsoneScreen(),
      bindings: [
        TopicsoneBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: onBoardingoneScreen,
      page: () => OnBoardingoneScreen(),
      bindings: [
        OnBoardingoneBinding(),
      ],
    ),
    GetPage(
      name: startedScreen,
      page: () => StartedScreen(),
      bindings: [
        StartedBinding(),
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
      page: () => StartedScreen(),
      bindings: [
        StartedBinding(),
      ],
    )
  ];
}
