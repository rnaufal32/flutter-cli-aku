import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuthTokenProvider = FutureProvider.autoDispose((ref) async {
  final token = await FirebaseAuth.instance.currentUser?.getIdToken();
  return token;
});
