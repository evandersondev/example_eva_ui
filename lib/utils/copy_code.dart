import 'package:flutter/services.dart';

class CopyCode {
  static Future<void> copy(String code) async {
    return await Clipboard.setData(
      ClipboardData(text: code),
    );
  }
}
