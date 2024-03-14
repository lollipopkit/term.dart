import 'dart:io';

const _reset = '\x1B[0m';

/// Terminal foreground colors
enum TermFgColors {
  reset(_reset),
  black('\x1B[30m'),
  red('\x1B[31m'),
  green('\x1B[32m'),
  yellow('\x1B[33m'),
  blue('\x1B[34m'),
  purple('\x1B[35m'),
  cyan('\x1B[36m'),
  white('\x1B[37m'),
  gray('\x1B[90m'),
  redAccent('\x1B[91m'),
  greenAccent('\x1B[92m'),
  yellowAccent('\x1B[93m'),
  blueAccent('\x1B[94m'),
  purpleAccent('\x1B[95m'),
  cyanAccent('\x1B[96m'),
  whiteAccent('\x1B[97m');

  /// The raw value of the color code.
  final String raw;

  /// Create a TermFgColors
  const TermFgColors(this.raw);

  void apply() {
    stdout.write(raw);
  }

  @override
  String toString() => raw;
}

/// Terminal background colors
enum TermBgColors {
  reset(_reset),
  black('\x1B[40m'),
  red('\x1B[41m'),
  green('\x1B[42m'),
  yellow('\x1B[43m'),
  blue('\x1B[44m'),
  purple('\x1B[45m'),
  cyan('\x1B[46m'),
  white('\x1B[47m'),
  gray('\x1B[100m'),
  redAccent('\x1B[101m'),
  greenAccent('\x1B[102m'),
  yellowAccent('\x1B[103m'),
  blueAccent('\x1B[104m'),
  purpleAccent('\x1B[105m'),
  cyanAccent('\x1B[106m'),
  whiteAccent('\x1B[107m');

  /// The raw value of the color code.
  final String raw;

  /// Create a TermBgColors
  const TermBgColors(this.raw);

  void apply() {
    stdout.write(raw);
  }

  @override
  String toString() => raw;
}

/// Extension on String to apply colors to the string.
extension TermColorStrX on String {
  /// Apply a foreground color to the string.
  String fg(TermFgColors color) => '$color$this$_reset';

  /// Apply a background color to the string.
  String bg(TermBgColors color) => '$color$this$_reset';

  /// Apply a foreground and background color to the string.
  String color({
    TermFgColors fgColor = TermFgColors.reset,
    TermBgColors bgColor = TermBgColors.reset,
  }) =>
      '$fgColor$bgColor$this$_reset';
}
