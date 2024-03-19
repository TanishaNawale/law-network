import 'package:baap_market/presentation/splash_screen/demo.dart';
import 'package:baap_market/presentation/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String splashScreen = '/splash';
  static String demo = '/demo';
  static String typeScreen = '/typeBaap-market';
  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: splashScreen, // Corrected initialLocation
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path:demo ,
        builder: (context, state) => Demo(),
      ),
    ],
  );
}