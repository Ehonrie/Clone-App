// ignore_for_file: avoid_unnecessary_containers

import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';

// import '../colors.dart';

// import '../../../../core/theme/styles.dart';

// import 'package:buga/core/theme/colors.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final Widget? space;
  final String hintText;
  final Color? fillColor;
  final BorderSide? borderSide;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final bool? filled;
  final int maxLines;
  final bool isPassword;
  final bool obscureText;

  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onToggleVisibility;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final Function()? onEditingComplete;

  const CustomTextField({
    super.key,
    this.maxLines = 1,
    this.space,
    this.label,
    required this.hintText,
    this.onTap,
    this.filled,
    this.focusNode,

    this.borderSide,
    this.onEditingComplete,
    this.fillColor,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.obscureText = false,

    this.onToggleVisibility,
    this.controller,
    this.onChanged,
    this.inputType,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.space != null
            ? SizedBox.shrink()
            : Text(
                widget.label ?? "",
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle1.copyWith(color: AppColors.grey),
              ),
        4.toColumnSizedBox(),
        TextFormField(
          maxLines: widget.maxLines,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          validator: widget.validator,
          keyboardType: widget.inputType,

          controller: widget.controller,
          focusNode: widget.focusNode,
          onEditingComplete: widget.onEditingComplete,
          obscureText: widget.isPassword && widget.obscureText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(
              context,
            ).textTheme.myBodyStyle1.copyWith(color: AppColors.text),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(width: 0.5, color: AppColors.text),
            ),
            filled: widget.filled ?? true,
            fillColor: widget.fillColor ?? Color(0xFFF7F7F7),

            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: widget.borderSide ?? BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 15.w,
            ),
          ),
        ),
      ],
    );
  }
}
