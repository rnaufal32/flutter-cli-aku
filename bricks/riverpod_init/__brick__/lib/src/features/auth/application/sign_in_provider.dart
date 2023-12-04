import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:{{app_name.snakeCase()}}/src/config/failures.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:{{app_name.snakeCase()}}/src/service/state/default_state.dart';

class SignIn extends AutoDisposeNotifier<DefaultState<bool>> {
  Future<void> submit(Map<String, dynamic> body) async {
    try {
      state = const DefaultLoadingState();
      final repository = ref.watch(authRepositoryProvider);
      final res = await repository.signIn(body);
      if (res.success) {
        await repository.saveUser(res.data!);
        await FirebaseAuth.instance.signInWithCustomToken(res.token!);
        state = const DefaultDataState(true);
      } else {
        throw HandledFailures(res.message!);
      }
    } catch (e, s) {
      Logger().e('message', error: e, stackTrace: s);
      state = DefaultErrorState(e, s);
    }
  }

  @override
  DefaultState<bool> build() {
    return const DefaultInitState();
  }
}

final signInProvider =
    NotifierProvider.autoDispose<SignIn, DefaultState<bool>>(SignIn.new);
