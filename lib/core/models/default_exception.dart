import '../enums/exception_types.dart';

class DefaultException implements Exception {
  DefaultException();

  factory DefaultException.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 204:
        return NoContentException();
      case 401:
        return UnauthenticatedException();
      case 402:
        return PaymentRequiredException();
      case 403:
        return UnauthorizedException();
      case 404:
        return NotFoundException();
      case 406:
        return InvalidException();
      case 410:
        return ExpireException();
      case 434:
        return UserExistsException();
      case 429:
        return RegenerationLimitException();
      case 439:
        return BlockedException();
      case 500:
        return ServerException();
      default:
        return UnexpectedException();
    }
  }

  factory DefaultException.fromEnumeration([ExceptionTypes? types]) {
    switch (types) {
      case ExceptionTypes.cache:
        return CacheException();
      case ExceptionTypes.process:
        return ProcessException();
      case ExceptionTypes.paymentRequired:
        return PaymentRequiredException();
      case ExceptionTypes.regenerationLimit:
        return RegenerationLimitException();
      case ExceptionTypes.unauthorized:
        return UnauthorizedException();
      case ExceptionTypes.connection:
        return ConnectionException();
      case ExceptionTypes.timeout:
        return TimeoutException();
      case ExceptionTypes.empty:
        return EmptyException();
      default:
        return UnexpectedException();
    }
  }
}

class ServerException extends DefaultException {}

class CacheException extends DefaultException {}

class EmptyException extends DefaultException {}

class NoContentException extends DefaultException {}

class InvalidException extends DefaultException {}

class NotFoundException extends DefaultException {}

class ExpireException extends DefaultException {}

class UserExistsException extends DefaultException {}

class PasswordException extends DefaultException {}

class UnexpectedException extends DefaultException {}

class UnauthenticatedException extends DefaultException {}

class UnauthorizedException extends DefaultException {}

class PaymentRequiredException extends DefaultException {}

class RegenerationLimitException extends DefaultException {}

class BlockedException extends DefaultException {}

class ConnectionException extends DefaultException {}

class ProcessException extends DefaultException {}

class TimeoutException extends DefaultException {}
