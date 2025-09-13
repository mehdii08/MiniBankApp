class Either<L, R> {
  const Either.left(L value)
      : _left = value,
        _right = null;

  const Either.right(R value)
      : _right = value,
        _left = null;

  final L? _left;
  final R? _right;

  bool get isLeft => _left != null;
  bool get isRight => _right != null;

  L get left => _left as L;
  R get right => _right as R;

  T fold<T>(T Function(L left) onLeft, T Function(R right) onRight) {
    if (_left != null) {
      return onLeft(_left as L);
    }
    return onRight(_right as R);
  }
}


