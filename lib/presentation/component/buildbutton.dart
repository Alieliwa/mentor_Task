import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class materialButton extends StatelessWidget {
  materialButton({
    required this.text,
    required this.color,
    required this.onPressed,
    required this.textColor,
    this.icon,
    this.circle,
    Key? key,
  }) : super(key: key);
  Color? color;
  Color? textColor;
  VoidCallback onPressed;
  String? text;
  IconData? icon;
  double? circle = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(circle!),),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        color: color,
        hoverColor: ColorManager.black,
        onPressed: onPressed,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}