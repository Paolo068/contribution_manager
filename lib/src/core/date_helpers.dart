import 'package:contribution_manager/src/core/logger.dart';
import 'package:intl/intl.dart';

String formatDate(String date) {
  try {
    final parsedDate = DateTime.parse(date);
    DateFormat formatter = DateFormat('dd MMM yyyy');
    return formatter.format(parsedDate);
  } catch (e) {
    logErr(e);
    rethrow;
  }
}
