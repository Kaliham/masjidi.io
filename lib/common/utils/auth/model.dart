class User {
  final String name;
  final String email;
  final int level;
  final String? photo;
  bool get isAdmin => level == 113;
  User({required this.name, required this.email, this.level = 0, this.photo});
}
