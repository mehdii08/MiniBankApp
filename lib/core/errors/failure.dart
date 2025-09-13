import 'package:equatable/equatable.dart';

/// Represents a domain-level failure with a message for diagnostics/UI.
class Failure extends Equatable {
  const Failure(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  List<Object?> get props => <Object?>[message, cause];
}


