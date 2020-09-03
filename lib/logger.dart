import 'package:logger/logger.dart' as debug_logger;
import 'package:sentry/sentry.dart';

import 'utils.dart';

class Logger {
  final _debugLogger = debug_logger.Logger();

  // TODO: insert your sentry dsn
  final _sentry = SentryClient(dsn: 'your-sentry-dsn');

  void verbose(dynamic message, [dynamic error, StackTrace stackTrace]) {
    _debugLogger.v(message, error, stackTrace);
  }

  void info(dynamic message, [dynamic error, StackTrace stackTrace]) {
    _debugLogger.i(message, error, stackTrace);
  }

  void warn(dynamic message, [dynamic error, StackTrace stackTrace]) {
    _debugLogger.w(message, error, stackTrace);
  }

  void error(dynamic message,
      [dynamic error, StackTrace stackTrace, User user]) {
    _debugLogger.e(message, error, stackTrace);

    if (!isInDebugMode) {
      _sentry.capture(
          event: Event(
              environment: 'production',
              level: SeverityLevel.error,
              exception: error,
              stackTrace: stackTrace,
              userContext: user));
    }
  }

  void wtf(dynamic message, [dynamic error, StackTrace stackTrace]) {
    _debugLogger.wtf(message, error, stackTrace);
  }
}
