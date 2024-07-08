import 'package:contribution_manager/src/core/utils/utils.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, Utils.getKeyboardHeight(context) + 10),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
