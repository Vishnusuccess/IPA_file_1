enum AuthErrorType { server, decoding, generic }

class AuthError {
  AuthError({
    required dynamic message,
    this.type = AuthErrorType.generic,
    this.originalError,
  }) : message = message is List<String>
            ? message.isNotEmpty
                ? message[0]
                : ''
            : message.toString();

  factory AuthError.decoding() => AuthError(
        message: 'Error decoding response',
        type: AuthErrorType.decoding,
      );

  factory AuthError.server() => AuthError(
        message: 'A server error occurred',
        type: AuthErrorType.server,
      );

  final String message;
  final AuthErrorType type;
  final Object? originalError;
}
