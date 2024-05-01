import 'package:masjidi_io/common/utils/auth/model.dart';

part "provider.g.dart";

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    return AuthState(isAuthenticated: false);
  }

  void login() {}

  void logout() {
    _stack.push(AuthState(isAuthenticated: false));
    state = _stack.peek;
  }
}

class AuthState {
  final bool isAuthenticated;
  final User? user;
  AuthState({required this.isAuthenticated, this.user});
  AuthState copyWith({bool? isAuthenticated, User? user}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
    );
  }

  AuthState get copyWithLogout => AuthState(isAuthenticated: false);
}
