import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:masjidi_io/app/masjid/view.dart';

class AuthProvider extends HookWidget {
  AuthProvider({super.key});
  final Widget authScreen = MasjidPage();
  final Widget unauthScreen = const Scaffold();

  @override
  Widget build(BuildContext context) {
    return isAuth() ? authScreen : unauthScreen;
  }

  bool isAuth() {
    return true;
  }
}
