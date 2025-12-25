class TextUtils {
  TextUtils._(); // 🔒 No instance

  /// Check text is null or empty
  static bool isNullOrEmpty(String? text) {
    return text == null || text.trim().isEmpty;
  }

  /// Return safe text (avoid crash)
  static String safe(String? text, {String fallback = ''}) {
    return isNullOrEmpty(text) ? fallback : text!;
  }

  /// Character count
  static int charCount(String text) {
    return text.length;
  }

  /// Word count
  static int wordCount(String text) {
    if (isNullOrEmpty(text)) return 0;
    return text.trim().split(RegExp(r'\s+')).length;
  }

  /// Trim text by max characters
  static String trimByChars(
      String text, {
        required int maxChars,
        String suffix = '...',
      }) {
    if (text.length <= maxChars) return text;
    return text.substring(0, maxChars) + suffix;
  }

  /// Trim text by words
  static String trimByWords(
      String text, {
        required int maxWords,
        String suffix = '...',
      }) {
    final words = text.split(RegExp(r'\s+'));
    if (words.length <= maxWords) return text;

    return words.take(maxWords).join(' ') + suffix;
  }

  /// Detect multiline text
  static bool isMultiline(String text) {
    return text.contains('\n');
  }
}
