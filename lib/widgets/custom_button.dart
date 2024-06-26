import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: KPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          title,
          style: KWhiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
