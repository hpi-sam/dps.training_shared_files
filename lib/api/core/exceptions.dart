class AuthenticationException implements Exception {
  final String message;

  AuthenticationException([this.message = 'Token invalid or missing']);

  @override
  String toString() {
    return 'AuthenticationException: $message';
  }
}

class EntityException implements Exception {
  final String message;

  EntityException([this.message = 'Entity not found']);

  @override
  String toString() {
    return 'EntityException: $message';
  }
}
