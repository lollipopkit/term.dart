## Intro
term - It's a library that controls the terminal, including the cursor, color, and text.

Not available on Web.

## Usage
```dart
import 'dart:io';

import 'package:term/term.dart';

void main() {
  // Clear the screen
  TermErase.screen();

  // Text formatting
  stdout.write('This is bold text\n'.bold()); // Make the text bold.
  TermTextCtrl.bold.apply(); // Make all the text after this bold.
  stdout.write('This is bold text too!\n');
  TermTextCtrl.reset.apply(); // Reset the text formatting.

  // Colros
  stdout.write('Red Fg'.fg(TermFgColors.red));
  stdout.write('Red Bg'.bg(TermBgColors.red));

  // Cursor
  TermCursor.up(n: 2);
  TermCursor.scrollUp();
}
```
