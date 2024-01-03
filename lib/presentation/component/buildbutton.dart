import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24),
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(circle!)),
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
                  fontSize: FontSize.s20,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}