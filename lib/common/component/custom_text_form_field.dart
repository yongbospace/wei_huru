import 'package:flutter/material.dart';
import 'package:wei_huru/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? errorText;
  final bool? obscureText;
  final bool? autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    required this.hintText,
    this.errorText,
    this.obscureText,
    this.autofocus,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: COLOR_INPUT_BORDER,
        width: 4.0,
      ),
    );

    return TextFormField(
      cursorColor: COLOR_PRIMARY,
      //비밀번호
      obscureText: true,
      autofocus: false,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: const TextStyle(
          color: COLOR_BODY_TEXT,
          fontSize: 14.0,
        ),
        fillColor: COLOR_INPUT_BG,
        filled: true,
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(color: COLOR_PRIMARY),
        ),
      ),
    );
  }
}
