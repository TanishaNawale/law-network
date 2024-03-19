import 'package:baap_market/presentation/phoneno_screen/phoneno_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String initialRoute = '/';
  static String homeScreen = '/';
  static String typeScreen = '/typeBaap-market';
  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: homeScreen, // Corrected initialLocation
    routes: [
      // GoRoute(
      //   path: homeScreen,
      //   builder: (context, state) =>Phone_Screen (),
      // ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) =>AppBar_screen (),
      ),
    ],
  );
}