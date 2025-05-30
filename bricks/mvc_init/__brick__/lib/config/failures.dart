import 'strings.dart';

class MountoyaPartnerFailures implements Exception {
  final String message;

  MountoyaPartnerFailures(this.message);

  @override
  String toString() {
    return message;
  }
}

class DefaultFailures extends MountoyaPartnerFailures {
  DefaultFailures() : super(AppStrings.defaultFailureMessage);

  @override
  String toString() {
    return message;
  }
}

class HandledFailures extends MountoyaPartnerFailures {
  HandledFailures(super.message);

  @override
  String toString() {
    return message;
  }
}
