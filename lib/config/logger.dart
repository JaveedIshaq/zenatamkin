import 'package:logger/logger.dart';

/// create the custom logger function
Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}

/// extend from log printer class
class SimpleLogPrinter extends LogPrinter {
  /// consrtuctor
  SimpleLogPrinter(this.className);

  /// class name
  final String className;

  @override
  List<String> log(LogEvent event) {
    final AnsiColor color = PrettyPrinter.levelColors[event.level]!;
    final String? emoji = PrettyPrinter.levelEmojis[event.level];
    return <String>[color('$emoji [$className]: ${event.message}')];
  }
}

// in class simple import this class
// and write ... Logger log = getLogger("ClasssName");
// log.v("This is a verbose");
// log.d("this is a debug message");
// log.i("This is info, should be used for public calls");
// log.w("This might become problem: a warning message");
// log.e("This is the error message");
