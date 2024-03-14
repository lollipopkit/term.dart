import 'dart:io';

abstract final class TermErase {
  /// Clear the line.
  ///
  /// - If [left] is true, clear from the cursor to the beginning of the line.
  /// - If [right] is true, clear from the cursor to the end of the line.
  static void line({bool left = true, bool right = true}) {
    assert(left || right);
    if (left && right) {
      stdout.write('\x1B[0K');
    } else if (left) {
      stdout.write('\x1B[1K');
    } else if (right) {
      stdout.write('\x1B[K');
    }
  }

  /// Clear the screen.
  ///
  /// - If [onlyAbove] is true, clear only the lines above the cursor.
  /// - If [onlyBelow] is true, clear only the lines below the cursor.
  static void screen({
    bool onlyAbove = false,
    bool onlyBelow = false,
  }) {
    assert(!(onlyAbove && onlyBelow));
    if (onlyAbove) {
      stdout.write('\x1B[1J');
    } else if (onlyBelow) {
      stdout.write('\x1B[J');
    } else {
      stdout.write('\x1B[2J');
    }
  }

  /// Clear the character at the cursor position.
  static void char() {
    stdout.write('\x1B[P');
  }
}