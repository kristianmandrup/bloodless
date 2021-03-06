part of bloodless_server;

final Logger _logger = new Logger("bloodless_server");

/// Setup a simple log handler, that output messages to console.
void setupConsoleLog([Level level = Level.INFO]) {
  Logger.root.level = level;
  Logger.root.onRecord.listen((LogRecord rec) {
    if (rec.level >= Level.SEVERE) {
      var stack = rec.stackTrace != null ? rec.stackTrace : "";
      print('${rec.level.name}: ${rec.time}: ${rec.message} - ${rec.error} $stack');
    } else {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    }
  });
}