import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Color? buttonColor;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;
  final double buttonHeight;
  final VoidCallback onTap;

  const CustomButton(
      {super.key,
      required this.buttonTitle,
      this.buttonColor,
      required this.textColor,
      required this.textWeight,
      required this.textSize,
      required this.buttonHeight,
      required this.onTap,
      required Alignment alignment});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: double.infinity,
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.primaryOrange,
            borderRadius: BorderRadius.circular(8)),
        alignment: Alignment.center,
        child: CustomText(
            title: buttonTitle,
            size: textSize,
            color: textColor,
            fontWeight: textWeight),
      ),
    );
  }
}
