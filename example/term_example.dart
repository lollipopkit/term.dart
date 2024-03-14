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
  TermCursor.up();
  wait();
  TermErase.char(n: 3);
  wait();
  TermCursor.down();
}

/// Wait for a while, or we can't see the output.
void wait() {
  sleep(const Duration(milliseconds: 1000));
}
