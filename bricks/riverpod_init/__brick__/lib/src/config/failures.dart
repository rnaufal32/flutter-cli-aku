import 'strings.dart';

class {{app_name.pascalCase()}}Failures implements Exception {
  final String message;

  {{app_name.pascalCase()}}Failures(this.message);
}

class DefaultFailures extends {{app_name.pascalCase()}}Failures {
  DefaultFailures() : super(AppStrings.defaultFailureMessage);
}

class HandledFailures extends {{app_name.pascalCase()}}Failures {
  HandledFailures(super.message);
}
