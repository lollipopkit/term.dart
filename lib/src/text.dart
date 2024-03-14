import 'dart:io';

/// (SGR) Class for controlling terminal text formatting.
enum TermTextCtrl {
  /// Reset the text formatting.
  reset('\x1B[0m'),

  /// Make the text bold.
  bold('\x1B[1m'),

  /// Make the text dim.
  dim('\x1B[2m'),

  /// Make the text italic.
  italic('\x1B[3m'),

  /// Make the text with underline.
  underline('\x1B[4m'),

  /// Make the text blink.
  inverse('\x1B[7m'),

  /// Make the text hidden.
  hidden('\x1B[8m'),

  /// Make the text strikethrough.
  strikethrough('\x1B[9m'),
  ;

  final String raw;

  const TermTextCtrl(this.raw);

  void apply() {
    stdout.write(raw);
  }

  @override
  String toString() => raw;
}

extension TermTextStrX on String {
  /// Apply bold to the string.
  String bold() => '${TermTextCtrl.bold}$this${TermTextCtrl.reset}';

  /// Apply dim to the string.
  String dim() => '${TermTextCtrl.dim}$this${TermTextCtrl.reset}';

  /// Apply italic to the string.
  String italic() => '${TermTextCtrl.italic}$this${TermTextCtrl.reset}';

  /// Apply underline to the string.
  String underline() => '${TermTextCtrl.underline}$this${TermTextCtrl.reset}';

  /// Apply inverse to the string.
  String inverse() => '${TermTextCtrl.inverse}$this${TermTextCtrl.reset}';

  /// Apply hidden to the string.
  String hidden() => '${TermTextCtrl.hidden}$this${TermTextCtrl.reset}';

  /// Apply strikethrough to the string.
  String strikethrough() =>
      '${TermTextCtrl.strikethrough}$this${TermTextCtrl.reset}';
}
