import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  // final Color? backgroundColor;
  final TextStyle? textStyle;
  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? padding;
  final Color? loadingColor;
  final Function onTap;
  final double? width;
  final double? height;
  final bool isActive;
  final bool loading;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    this.textColor,
    // this.backgroundColor,
    this.boxDecoration,
    this.textStyle,
    this.width,
    required this.isActive,
    required this.onTap,
    required this.loading,
    this.loadingColor,
    this.padding,
    this.child,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isActive && loading == false ? onTap() : () {},
      child: Container(
        height: height ?? 55,
        width: width ?? double.infinity,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 0),
        decoration:
            boxDecoration ??
            BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 2.0.r,
                  offset: Offset(2, 2),
                  spreadRadius: 1.0.r,
                ),
              ],
              borderRadius: borderRadius ?? BorderRadius.circular(10.r),
              color: AppColors.primary,

              // gradient: LinearGradient(
              //   begin: Alignment.centerLeft,
              //   end: Alignment.centerRight,
              //   colors: [
              //     Color(0xFF7C3AED), // left color
              //     Color(0xFFA78BFA), // right color
              //   ],
              //   stops: [0.0, 1.0], // From 0% to 100%
              // ),
            ),
        child: loading
            ? Center(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      loadingColor ?? Colors.white,
                    ),
                  ),
                ),
              )
            : child ??
                  Center(
                    child: Text(
                      text,
                      style:
                          textStyle ??
                          TextStyle(
                            fontSize: 16,
                            height: 19.52 / 16,
                            fontWeight: FontWeight.w700,
                            color: textColor ?? AppColors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
      ),
    );
  }
}
