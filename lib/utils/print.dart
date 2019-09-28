import 'dart:io';

import 'package:ansicolor/ansicolor.dart';

void printInfo(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..blue();
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}

void printWarning(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..yellow();
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}

void printError(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..red(bg: true);
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}

void printSuccess(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..green();
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}

void printPurple(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..xterm(091, bg: true);
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}

void printPink(dynamic consoleLog) {
  AnsiPen pen = new AnsiPen()..xterm(013);
  print(Platform.isAndroid ? pen(consoleLog.toString()): consoleLog);
}
