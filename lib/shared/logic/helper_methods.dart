import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigateTo(Widget page) {
  Navigator.push(
    navigatorKey.currentContext!,
    MaterialPageRoute(builder: (context) => page),
  );
}


enum MessageType { success, fail, warning }

void showMessage(String message, {MessageType type = MessageType.fail}) {
  if (message.isNotEmpty) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        backgroundColor: type == MessageType.fail
            ? Colors.red
            : type == MessageType.warning
            ? Colors.yellow
            : Colors.green,
        content: Text(
            message,
          style: TextStyle(
            color: type == MessageType.fail
                ? Colors.white
                : type == MessageType.warning
                ? Colors.black
                : Colors.white,
          ),
        ),
      ),
    );
    debugPrint(message);
  }
}
