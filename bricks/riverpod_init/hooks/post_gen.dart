import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');
  await Process.run('flutter', ['pub', 'add', 'flutter_hooks', 'hooks_riverpod', 'scaled_app', 'gap', 'dio', 'retrofit', 'freezed_annotation', 'equatable', 'auto_route', 'hive', 'hive_flutter', 'jiffy', 'logger', 'reactive_forms', 'firebase_core', 'firebase_auth', 'google_fonts']);
  await Process.run('flutter', ['pub', 'add', '-d', 'build_runner', 'freezed', 'auto_route_generator', 'json_serializable', 'retrofit_generator']);
  await Process.run('dart', ['run', 'build_runner', 'build', '-d']);
  progress.complete();
}
