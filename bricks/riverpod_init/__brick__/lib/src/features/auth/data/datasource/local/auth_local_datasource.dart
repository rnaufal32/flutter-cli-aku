import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/user_model.dart';
import 'package:hive/hive.dart';

class AuthLocalDatasource {
  UserModel getUser() {
    try {
      final box = Hive.box('user');
      // final nik = box.get('nik', defaultValue: '123456');
      // final avatar = box.get('avatar', defaultValue: '');
      // final name = box.get('name', defaultValue: 'Naufal Tes');
      // final position = box.get('position', defaultValue: '');

      return UserModel();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUser(UserModel user) async {
    final box = Hive.box('user');
    // await box.put('nik', user.nik);
    // await box.put('avatar', user.avatar);
    // await box.put('name', user.name);
    // await box.put('position', user.position);
  }
}

final authLocalDatasourceProvider =
    Provider.autoDispose((ref) => AuthLocalDatasource());
