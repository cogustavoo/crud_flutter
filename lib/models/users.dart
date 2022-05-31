class User {
  final String id;
  final String name;
  final String avatarUrl;
  final String email;

  const User(
      {required this.avatarUrl,
      required this.name,
      required this.email,
      required this.id});
}
