import 'package:mynotes/services/auth/auth_user.dart';

abstract class AuthProvider {
  Future<void> initialize();
  Authuser? get currentUser;
  Future<Authuser> logIn({
    required String email,
    required String password,
  });
  Future<Authuser> createUser({
    required String email,
    required String password,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}
