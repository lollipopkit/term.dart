import 'dart:io';

import 'package:term/term.dart';

void main() {
  // Text formatting
  stdout.write('This is bold text\n'.bold()); // Make the text bold.
  TermTextCtrl.bold.apply(); // Make all the text after this bold.
  stdout.write('This is bold text too!\n');
  TermTextCtrl.reset.apply(); // Reset the text formatting.

  // Colros
  stdout.write('Red Fg'.fg(TermFgColors.red));
  stdout.write('Red Bg'.bg(TermBgColors.red));

  // Cursor
  stdout.write('\nCursor');
  wait();
  TermCursor.up(n: 2);
  wait();
  TermCursor.down(n: 2);
  wait();
  TermCursor.right(n: 2);
  wait();
  TermCursor.left(n: 2);
  wait();
  TermCursor.scrollUp();
  wait();
  TermCursor.scrollDown();
  wait();
  TermCursor.insertLine();
  wait();
  stdout.write('This is normal text');
  wait();
  TermCursor.deleteLine();
  wait();
  stdout.write('This is normal text');
  wait();
  TermCursor.left(n: 3);
  TermCursor.deleteChar(n: 3);
  wait();
  TermCursor.setStyle(style: TermCursorStyle.bar);
}

/// Wait for a while, or we can't see the output.
void wait() {
  sleep(const Duration(milliseconds: 1000));
}
