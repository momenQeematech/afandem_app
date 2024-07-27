import 'package:afandem_app/core/theming/colorManger.dart';
import 'package:afandem_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor,
    this.radius,
    this.height,
    this.width,
    this.textStyle,
    this.borderColor,
  });

  final String text;
  final void Function()? onPressed;
  final WidgetStateProperty<Color?>? buttonColor;
  final double? radius;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w ?? double.infinity,
      height: height ?? 48.h,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: buttonColor ??
              const WidgetStatePropertyAll(
                ColorManger.mainColor,
              ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                radius ?? 12.0,
              ),
            ),
          ),
          side: WidgetStatePropertyAll(
            BorderSide(
              color: borderColor ?? ColorManger.mainColor,
            ),
          ),
        ),
        child: Text(
          text,
          style: textStyle ?? Styles.font15W600,
        ),
      ),
    );
  }
}
