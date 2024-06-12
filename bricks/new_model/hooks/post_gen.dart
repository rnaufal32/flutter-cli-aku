import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');
  await Process.run('dart', ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs']);
  progress.complete();

}
