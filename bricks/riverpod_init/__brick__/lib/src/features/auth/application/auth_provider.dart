import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/domain/repositories/auth_repository.dart';

final authStateProvider = StreamProvider.autoDispose(
    (ref) => FirebaseAuth.instance.authStateChanges());

final userProvider = Provider.autoDispose((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.getUser();
});
