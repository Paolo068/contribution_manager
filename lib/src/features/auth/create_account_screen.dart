import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final emailCtrlr = EmailAuthController;
    // final authProviders = [EmailAuthProvider()];
    // return Scaffold(
    //   body: SignInScreen(
    //     providers: authProviders,
    //     showPasswordVisibilityToggle: true,
    //     actions: [
    //       AuthStateChangeAction<SignedIn>((context, state) {
    //         Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => const CustomProfileScreen(),
    //           ),
    //         );
    //       }),
    //       AuthStateChangeAction<UserCreated>((context, state) {
    //         Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => const CustomProfileScreen(),
    //           ),
    //         );
    //       })
    //     ],
    //   ),
    // );
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                'Manage and Secure Your Google Account here',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(labelText: "Your Email"),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: "Your Password"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Secure My Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
