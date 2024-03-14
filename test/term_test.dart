import 'dart:io';

import 'package:term/term.dart';
import 'package:test/test.dart';

void main() {
  group('TermText', () {
    stdout.write('This is normal text');
    TermTextCtrl.bold.apply();
    stdout.write('This is bold text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.dim.apply();
    stdout.write('This is dim text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.italic.apply();
    stdout.write('This is italic text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.underline.apply();
    stdout.write('This is underline text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.inverse.apply();
    stdout.write('This is inverse text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.hidden.apply();
    stdout.write('This is hidden text');
    TermTextCtrl.reset.apply();
    TermTextCtrl.strikethrough.apply();
    stdout.write('This is strikethrough text');
    TermTextCtrl.reset.apply();
    stdout.write('This is normal text');

    stdout.write('This is bold text'.bold());
    stdout.write('This is dim text'.dim());
    stdout.write('This is italic text'.italic());
    stdout.write('This is underline text'.underline());
    stdout.write('This is inverse text'.inverse());
    stdout.write('This is hidden text'.hidden());
    stdout.write('This is strikethrough text'.strikethrough());
  });

  group('TermColors', () {
    stdout.write('\nForeground colors');
    stdout.write('Red'.fg(TermFgColors.red));
    stdout.write('Green'.fg(TermFgColors.green));
    stdout.write('Yellow'.fg(TermFgColors.yellow));
    stdout.write('Blue'.fg(TermFgColors.blue));
    stdout.write('Purple'.fg(TermFgColors.purple));
    stdout.write('Cyan'.fg(TermFgColors.cyan));
    stdout.write('White'.fg(TermFgColors.white));
    stdout.write('Gray'.fg(TermFgColors.gray));
    stdout.write('RedAccent'.fg(TermFgColors.redAccent));
    stdout.write('GreenAccent'.fg(TermFgColors.greenAccent));
    stdout.write('YellowAccent'.fg(TermFgColors.yellowAccent));
    stdout.write('BlueAccent'.fg(TermFgColors.blueAccent));
    stdout.write('PurpleAccent'.fg(TermFgColors.purpleAccent));
    stdout.write('CyanAccent'.fg(TermFgColors.cyanAccent));
    stdout.write('WhiteAccent'.fg(TermFgColors.whiteAccent));
    stdout.write('\nBackground colors');
    stdout.write('Red'.bg(TermBgColors.red));
    stdout.write('Green'.bg(TermBgColors.green));
    stdout.write('Yellow'.bg(TermBgColors.yellow));
    stdout.write('Blue'.bg(TermBgColors.blue));
    stdout.write('Purple'.bg(TermBgColors.purple));
    stdout.write('Cyan'.bg(TermBgColors.cyan));
    stdout.write('White'.bg(TermBgColors.white));
    stdout.write('Gray'.bg(TermBgColors.gray));
    stdout.write('RedAccent'.bg(TermBgColors.redAccent));
    stdout.write('GreenAccent'.bg(TermBgColors.greenAccent));
    stdout.write('YellowAccent'.bg(TermBgColors.yellowAccent));
    stdout.write('BlueAccent'.bg(TermBgColors.blueAccent));
    stdout.write('PurpleAccent'.bg(TermBgColors.purpleAccent));
    stdout.write('CyanAccent'.bg(TermBgColors.cyanAccent));
    stdout.write('WhiteAccent'.bg(TermBgColors.whiteAccent));
  });

  group('Cursor', () {
    stdout.write('Please use `example/term_example.dart` to test cursor'
        .bg(TermBgColors.redAccent));
  });
}
