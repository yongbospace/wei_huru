import 'package:flutter/material.dart';
import 'package:wei_huru/common/component/custom_text_form_field.dart';
import 'package:wei_huru/common/const/colors.dart';
import 'package:wei_huru/common/layout/default_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      // backgroundColor: COLOR_BACKGROUND,
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 48.0),
                Image.asset('asset/img/logo_text_black.png',
                    width: MediaQuery.of(context).size.width * 2 / 3),
                _Title(),
                SizedBox(height: 36.0),
                CustomTextFormField(
                  hintText: '이메일',
                  onChanged: (String value) {},
                ),
                SizedBox(height: 16.0),
                CustomTextFormField(
                  hintText: '비밀번호',
                  onChanged: (String value) {},
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: COLOR_BODY_TEXT,
                    padding: EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: COLOR_BODY_TEXT,
                    padding: EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '로그인',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: COLOR_BODY_TEXT,
      ),
      textAlign: TextAlign.center,
    );
  }
}
