import 'package:flutter/material.dart';
import 'package:wei_huru/common/component/custom_text_form_field.dart';
import 'package:wei_huru/common/view/splash_screen.dart';
import 'package:wei_huru/user/view/login_screen.dart';

void main() {
  runApp(
    const _App(),
  );
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'NotoSansKR',
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen());
  }
}
