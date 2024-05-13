class MoodConverter {
  static String moodToEmoji(int mood) {
    switch (mood) {
      case -1:
        return '❔';
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
