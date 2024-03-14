import 'dart:io';

/// (CSI) Class for controlling terminal curosr position and movement.
abstract final class TermCursor {
  /// Show the cursor.
  static void show() {
    stdout.write('\x1B[?25h');
  }

  /// Hide the cursor.
  static void hide() {
    stdout.write('\x1B[?25l');
  }

  /// Save the cursor position.
  static void save() {
    stdout.write('\x1B[s');
  }

  /// Restore the cursor position.
  static void restore() {
    stdout.write('\x1B[u');
  }

  /// Move the cursor up by [n] lines.
  static void up({int n = 1}) {
    stdout.write('\x1B[${n}A');
  }

  /// Move the cursor down by [n] lines.
  static void down({int n = 1}) {
    stdout.write('\x1B[${n}B');
  }

  /// Move the cursor right by [n] columns.
  static void right({int n = 1}) {
    stdout.write('\x1B[${n}C');
  }

  /// Move the cursor left by [n] columns.
  static void left({int n = 1}) {
    stdout.write('\x1B[${n}D');
  }

  /// Move the cursor to the next line left.
  static void nextLine({int n = 1}) {
    stdout.write('\x1B[${n}E');
  }

  /// Move the cursor to the previous line left.
  static void prevLine({int n = 1}) {
    stdout.write('\x1B[${n}F');
  }

  /// Move the cursor to the absolute column [n].
  static void horizonAbs({int n = 1}) {
    stdout.write('\x1B[${n}G');
  }

  /// Move the cursor to the specified position.
  static void moveTo({int x = 1, int y = 1}) {
    stdout.write('\x1B[$y;${x}H');
  }

  /// Move the cursor by [x] and [y] positions.
  static void move({int x = 0, int y = 0}) {
    if (x > 0) {
      right(n: x);
    } else if (x < 0) {
      left(n: x.abs());
    }
    if (y > 0) {
      down(n: y);
    } else if (y < 0) {
      up(n: y.abs());
    }
  }

  /// Scroll the screen up by [n] lines.
  static void scrollUp({int n = 1}) {
    stdout.write('\x1B[${n}S');
  }

  /// Scroll the screen down by [n] lines.
  static void scrollDown({int n = 1}) {
    stdout.write('\x1B[${n}T');
  }

  /// Insert [n] lines at the cursor position.
  static void insertLine({int n = 1}) {
    stdout.write('\x1B[${n}L');
  }

  /// Delete [n] lines at the cursor position.
  static void deleteLine({int n = 1}) {
    stdout.write('\x1B[${n}M');
  }

  /// Delete [n] characters at the cursor position.
  static void deleteChar({int n = 1}) {
    stdout.write('\x1B[${n}P');
  }

  /// Set the cursor style.
  static void setStyle({TermCursorStyle style = TermCursorStyle.block}) {
    stdout.write('\x1B[${style.style} q');
  }
}

/// Terminal cursor styles
enum TermCursorStyle {
  block(0),
  underline(1),
  bar(2),
  ;

  /// The raw value of the style code.
  final int style;

  /// Create a TermCursorStyle
  const TermCursorStyle(this.style);
}
