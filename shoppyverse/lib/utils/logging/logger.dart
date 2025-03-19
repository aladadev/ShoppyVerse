import 'package:logger/logger.dart';

class LoggerHelper {
  static final Logger _logger = Logger(
    level: Level.debug,
    printer: PrettyPrinter(),
  );

  static void logDebug(String message) {
    _logger.d(message);
  }

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logError(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }

  static void logWarning(String message) {
    _logger.w(message);
  }
}
