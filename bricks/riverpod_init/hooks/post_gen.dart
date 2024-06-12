import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final progress = context.logger.progress('Installing packages');
  await Process.run('flutter', ['pub', 'add', 'flutter_hooks', 'hooks_riverpod', 'scaled_app', 'gap', 'dio', 'retrofit', 'freezed_annotation', 'equatable', 'auto_route', 'hive', 'hive_flutter', 'jiffy', 'logger', 'reactive_forms', 'firebase_core', 'firebase_auth']);
  await Process.run('flutter', ['pub', 'add', '-d', 'build_runner', 'freezed', 'auto_route_generator', 'json_serializable', 'retrofit_generator']);
  progress.complete();
}
