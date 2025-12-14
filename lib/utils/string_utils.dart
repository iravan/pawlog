class StringUtils {
  static String getFirstTwoWords(String text) {
    final words = text.trim().split(RegExp(r'\s+'));
    String result;
    if (words.length <= 2) {
      result = text;
    } else {
      result = '${words[0]} ${words[1]}';
    }
    // Limit to 10 characters
    if (result.length > 10) {
      return result.substring(0, 10);
    }
    return result;
  }
}

