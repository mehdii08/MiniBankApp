/// Base interface for application use cases.
///
/// Avoids prescribing an error model up-front; concrete use cases can
/// return domain-specific types (e.g., Result/Either) as needed.
abstract interface class UseCase<Output, Input> {
  Future<Output> call(Input params);
}

/// Variant for use cases that do not require input parameters.
abstract interface class NoParamsUseCase<Output> {
  Future<Output> call();
}


