import 'package:intl/intl.dart';

class MoodConverter {
  static String moodToEmoji(int mood) {
    switch (mood) {
      case -1:
        return '❓';
      case 0:
        return '😞';
      case 1:
        return '😐';
      case 2:
        return '🙂';
      case 3:
        return '😊';
      case 4:
        return '🤩';
      default:
        throw Exception('Invalid mood: $mood');
    }
  }
}

class DateFormatter {
  static String format(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    if (difference.inDays == 0) {
      return DateFormat('HH:mm').format(date);
    } else if (difference.inDays == 1) {
      return 'Yesterday at ${DateFormat('HH:mm').format(date)}';
    } else {
      return DateFormat('dd/MM/yyyy').format(date);
    }
  }
}
