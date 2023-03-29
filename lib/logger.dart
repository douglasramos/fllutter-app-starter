import 'package:flutter_app_starter/secrets.dart';
import 'package:logger/logger.dart' as debug_logger;
import 'package:sentry/sentry.dart';
import 'utils.dart';

class Logger {
  final _debugLogger = debug_logger.Logger();

  final _sentry = SentryClient(
    SentryOptions(dsn: sentryDSN),
  );

  void verbose(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _debugLogger.v(message, error, stackTrace);
  }

  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _debugLogger.i(message, error, stackTrace);
  }

  void warn(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _debugLogger.w(message, error, stackTrace);
  }

  void error(dynamic message,
      [dynamic error, StackTrace? stackTrace, SentryUser? user]) {
    _debugLogger.e(message, error, stackTrace);

    if (!isInDebugMode) {
      final exception = SentryException(
        value: error.toString(),
        type: error.toString(),
        module: 'storian-rpg',
      );
      _sentry.captureEvent(
        SentryEvent(
            environment: 'production',
            level: SentryLevel.error,
            message: SentryMessage(message),
            exceptions: [exception],
            user: user),
        stackTrace: stackTrace,
      );
    }
  }

  void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _debugLogger.wtf(message, error, stackTrace);
  }
}
