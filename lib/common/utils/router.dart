import 'package:go_router/go_router.dart';
import 'package:masjidi_io/app/masjid/pages/contact_us/view.dart';
import 'package:masjidi_io/app/masjid/pages/home/view.dart';

class Router {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: HomePage.route,
        pageBuilder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: ContactUsPage.route,
        pageBuilder: (context, state) => ContactUsPage(),
      ),
      GoRoute(
        path: ContactPage.route,
        pageBuilder: (context, state) => ContactPage(),
      ),
    ],
  );
}
