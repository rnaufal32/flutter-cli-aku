import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info('Jangan lupa running cmd');
  context.logger.info(
      'flutter pub add flutter_hooks hooks_riverpod flutter_screenutil dio retrofit freeze_annotation equatable auto_route hive hive_flutter jiffy logger');
  context.logger.info(
      'flutter pub add -d build_runner freezed auto_route_generator json_serializable retrofit_generator');
}
