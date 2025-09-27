import 'strings.dart';

class {{app_name.pascalCase()}}Failures implements Exception {
  final String message;

  {{app_name.pascalCase()}}Failures(this.message);

  @override
  String toString() {
    return message;
  }
}

class DefaultFailures extends {{app_name.pascalCase()}}Failures {
  DefaultFailures() : super(AppStrings.defaultFailureMessage);
}

class HandledFailures extends {{app_name.pascalCase()}}Failures {
  HandledFailures(super.message);
}

class NetworkFailures extends {{app_name.pascalCase()}}Failures {
  NetworkFailures() : super(AppStrings.networkFailureMessage);
}

class ServerFailures extends {{app_name.pascalCase()}}Failures {
  final int? statusCode;
  
  ServerFailures({this.statusCode}) 
    : super(statusCode == 500 
        ? AppStrings.serverErrorFailureMessage 
        : AppStrings.defaultFailureMessage);
}
