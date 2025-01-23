import 'package:authorization/authorization.dart';
import 'package:flutter/material.dart';
import 'package:mm_template/router/router.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ResetPasswordView(),
      ),
    );
  }
}
