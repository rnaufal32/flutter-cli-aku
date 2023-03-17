abstract class AuthRepository {
  Future<dynamic> getUser();
  Future<dynamic> saveUser(dynamic param);
  Stream<dynamic> authStateChanges();
}
