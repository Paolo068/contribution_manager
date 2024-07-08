import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProviders = [EmailAuthProvider()];
    return Scaffold(
      body: SignInScreen(
        providers: authProviders,
        showAuthActionSwitch: true,
      ),
    );
  }
}
