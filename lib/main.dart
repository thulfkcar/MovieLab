import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:movielab/constants/themes.dart';
import 'package:movielab/pages/main/profile/profile_controller.dart';
import 'package:movielab/pages/show/show_page/show_page.dart';
import 'constants/routes.dart';
import 'models/hive/hive_helper/register_adapters.dart';
import 'models/hive/models/show_preview.dart';
import 'models/hive/models/user.dart';
import 'modules/cache/cache_data.dart';
import 'pages/main/home/home_data_controller.dart';
import 'pages/main/main_controller.dart';
import 'pages/main/main_page.dart';
import 'pages/main/search/search_bar/search_bar_controller.dart';
import 'pages/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();
  await initializeGetX();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final String initRoute = splashScreenRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieLab',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      initialRoute: initRoute,
      onUnknownRoute: (settings) {
        // ToDo: Setup deep link for iOS.
        // ToDo: Improve router for Android(not launched).
        final matches =
            RegExp(r'(^\/title\/)(tt\d*)').firstMatch(settings.name.toString());
        if (matches?.group(1).toString() == "/title/" &&
            matches?.group(2).toString() != null) {
          return MaterialPageRoute(
            builder: (BuildContext context) =>
                ShowPage(id: matches!.group(2).toString()),
          );
        }
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      },
      routes: {
        splashScreenRoute: (context) => const SplashScreen(),
        homeScreenRoute: (context) => const MainPage(),
      },
    );
  }
}

Future? initializeHive() async {
  // Initialize Hive and Hive Flutter
  await Hive.initFlutter();
  registerAdapters();
  Hive.openBox<HiveUser>('user');
  Hive.openBox<HiveShowPreview>('collection');
  Hive.openBox<HiveShowPreview>('watchlist');
  Hive.openBox<HiveShowPreview>('history');
  Hive.openBox<HiveShowPreview>('artists');
}

Future? initializeGetX() async {
  // Initialize the controllers
  Get.put(MainController());
  Get.put(HomeDataController());
  Get.put(SearchBarController());
  Get.put(ProfileController());
  Get.put(CacheData());
}
