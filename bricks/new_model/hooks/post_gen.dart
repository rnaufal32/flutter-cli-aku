import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final progress = context.logger.progress('Installing packages');
  await Process.run('dart', ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs']);
  progress.complete();

}
