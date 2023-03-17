// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class AuthService {
//   final AuthRepository authRepository;

//   AuthService(this.authRepository);

//   Stream<User?> authState() => authRepository.authState();

//   UserModel getUser() {
//     return authRepository.getUser();
//   }
// }

// final authServiceProvider = Provider.autoDispose(
//     (ref) => AuthService(ref.watch(authRepositoryProvider)));

// final authStateProvider = StreamProvider.autoDispose((ref) {
//   final repository = ref.watch(authServiceProvider);
//   return repository.authState();
// });

// final getUserProvider = Provider.autoDispose((ref) {
//   final repository = ref.watch(authServiceProvider);
//   return repository.getUser();
// });
