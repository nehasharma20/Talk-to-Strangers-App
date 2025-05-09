import 'package:flutter/material.dart';
import 'package:talkany/auth_services.dart';
class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Talk to Strangers', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Sign in with Email'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Trigger Google sign-in logic
                final user = await AuthService.signInWithGoogle();
                if (user != null) {
                  Navigator.pushNamed(context, '/home');
                }
              },
              child: Text('Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
