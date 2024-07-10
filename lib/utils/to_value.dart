extension StringExtension on String {
  String toValue() {
    List<String> parts = double.parse(this).toStringAsFixed(0).split('.');
    String integerPartReversed = parts[0].split('').reversed.join('');
    String formattedReversed = integerPartReversed.replaceAllMapped(RegExp(r'.{3}'), (match) => '${match[0]} ');
    String formatted = formattedReversed.split('').reversed.join('').trim();

    return formatted;
  }
}
