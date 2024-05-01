import 'package:masjidi_io/common/utils/auth/model.dart';

class AuthService {
  Future<User> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));

    return User(name: 'John Doe', email: email, level: 113);
  }
}
