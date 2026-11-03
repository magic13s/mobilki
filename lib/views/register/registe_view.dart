import 'package:flutter/material.dart';

class RegisteView extends StatelessWidget {
  const RegisteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}