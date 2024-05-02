import 'package:go_router/go_router.dart';
import 'package:masjidi_io/app/masjid/view.dart';
import 'package:masjidi_io/app/pages/about/view.dart';
import 'package:masjidi_io/app/pages/contact_us/view.dart';
import 'package:masjidi_io/app/pages/home/view.dart';
import 'package:masjidi_io/app/pages/login/view.dart';
import 'package:masjidi_io/app/pages/masjid/view.dart';

import '../../app/pages/404/view.dart';

class Router {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) => const NotFoundPage(),
    routes: [
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomePage(),
            ),
            GoRoute(
              path: '/contact-us',
              builder: (context, state) => const ContactUsPage(),
            ),
            GoRoute(
              path: '/about',
              builder: (context, state) => const AboutPage(),
            ),
            GoRoute(
              path: '/login',
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: '/masjid/:id',
              builder: (context, state) => const MasjidPage(),
            ),
          ]),
        ],
      ),
      GoRoute(
        path: HomePage.route,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: ContactUsPage.route,
        builder: (context, state) => const ContactUsPage(),
      ),
      GoRoute(
        path: AboutPage.route,
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: MasjidPage.route,
        builder: (context, state) => const NotFoundPage(),
      ),
    ],
  );
}
