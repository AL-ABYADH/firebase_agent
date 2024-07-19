import '../models/default_exception.dart';

class ErrorModel {
  final String message;
  final bool isDarkTheme;
  String icon;
  String? image;
  DefaultException? exception;

  ErrorModel({
    required this.message,
    required this.isDarkTheme,
    this.image,
    this.exception,
    this.icon = 'assets/icons/error.png',
  }) {
    exception ??= DefaultException.fromEnumeration();
  }
}
