import 'package:go_router/go_router.dart';
import 'package:masjidi_io/app/masjid/pages/home/view.dart';
import 'package:masjidi_io/app/masjid/pages/masjid/view.dart';

class Router {
  static final GoRouter _router = GoRouter(
    initialLocation: HomeScreen.route,
    routes: [
      GoRoute(
        path: HomeScreen.route,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: MasjidScreen.route,
        builder: (context, state) => MasjidScreen(),
      ),
    ],
  );
  static GoRouter get router => _router;
}

