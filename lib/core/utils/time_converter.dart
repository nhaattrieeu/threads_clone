import 'package:flutter/cupertino.dart';
import 'package:threads_clone/core/extensions/l10n_extension.dart';

String timeConverter(BuildContext context, String time) {
  DateTime create = DateTime.parse(time);
  Duration difference = DateTime.now().difference(create);
  if (difference.inDays < 7) {
    if (difference.inHours < 24) {
      if (difference.inMinutes < 60) {
        if (difference.inSeconds < 60) {
          return context.translate.now;
        } else {
          return "${difference.inMinutes}${context.translate.min}";
        }
      } else {
        return "${difference.inHours}${context.translate.hour}";
      }
    } else {
      return "${difference.inDays}${context.translate.day}";
    }
  } else {
    return "${create.day}/${create.month}/${create.year}";
  }
}
