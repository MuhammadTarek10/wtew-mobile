import 'package:equatable/equatable.dart';
import 'package:wtew/config/utils/app_strings.dart';

abstract class Failure extends Equatable {
  final String message;

  String get getMessage => message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = AppStrings.cacheFailureMessage});
}
