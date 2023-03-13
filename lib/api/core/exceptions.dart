class AuthenticationException implements Exception {
  final String message;

  AuthenticationException([this.message = 'Token invalid or missing']);

  @override
  String toString() {
    return 'AuthenticationException: $message';
  }
}