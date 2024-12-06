import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NAuthCode.dart';

class AuthCodeExample extends StatelessWidget {
  const AuthCodeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Moon Pin Input")),
      body: Center(
        child: NAuthCode(
          onCompleted: (pin) {
            print("PIN entered: $pin");
          },
          showError: false,
          obscureText: false,
        ),
      ),
    );
  }
}

