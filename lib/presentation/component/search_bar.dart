import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class buildTextFormField extends StatelessWidget {
  buildTextFormField(
      {Key? key,
      this.controller,
      this.labelText,
      this.hintText,
      this.obscureText,
      this.onChanged,
      this.onTap,
      this.suffix,
      this.suffixFun,
      this.prefix,
      required this.onSubmited,
      this.secirty,
      this.focusNode,
      this.type,
      this.max,
      // this.readonly = false,
      this.validator})
      : super(key: key);

  String? hintText;
  String? labelText;

  // bool readonly;
  TextEditingController? controller;
  Widget? prefix;
  FormFieldValidator? validator;
  TextInputType? type;
  bool? obscureText;
  VoidCallback? suffixFun;
  Widget? suffix;
  Function onSubmited;
  bool? secirty;
  ValueChanged<String>? onChanged;
  VoidCallback? onTap;
  FocusNode? focusNode;
  int? max;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: ColorManager.white
      ),
      child: TextFormField(
        focusNode: focusNode,
        // readOnly: readonly,
        maxLines: max,
        autofocus: false,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: hintText,
          suffixIcon: suffix,
          labelText: labelText,
          prefixIcon: prefix,
          hintStyle: const TextStyle(color: Color(0xFF8D8E98)),
          labelStyle: TextStyle(color: ColorManager.primary),
        ),
        onFieldSubmitted: (val) {
          onSubmited();
        },
        controller: controller,
        textAlign: TextAlign.left,
        // obscureText: obscureText!,
        validator: validator,
        keyboardType: type,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
