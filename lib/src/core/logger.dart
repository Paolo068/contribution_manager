// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

logErr(log) {
  Logger().e(log.toString());
}

logInfo(log) {
  Logger().i(log.toString());
}
