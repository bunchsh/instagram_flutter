import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/feature/auth/controller/auth_controller.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({
    super.key,
  });

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => signInWithGoogle(ref),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.g_mobiledata_rounded,
            color: Colors.red,
          ),
          Text(
            'Google로 로그인',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
