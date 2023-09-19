import 'package:flutter/material.dart';
import 'package:wei_huru/common/const/colors.dart';
import 'package:wei_huru/common/layout/default_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      backgroundColor: COLOR_BACKGROUND,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/logo_image.png'),
            const SizedBox(height: 16.0),
            const CircularProgressIndicator(
              color: COLOR_PRIMARY,
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
