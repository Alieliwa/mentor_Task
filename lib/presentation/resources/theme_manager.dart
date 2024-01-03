// import 'package:elmentor/presentation/resources/color_manager.dart';
// import 'package:elmentor/presentation/resources/fonts_manager.dart';
// import 'package:elmentor/presentation/resources/styles_manager.dart';
// import 'package:elmentor/presentation/resources/valuse_manager.dart';
// import 'package:flutter/material.dart';
//
// ThemeData getApplicationTheme() {
//   return ThemeData(
//     //main colors
//     primaryColor: ColorManager.primary,
//     primaryColorDark: ColorManager.darkPrimary,
//     primaryColorLight: ColorManager.lightPrimary,
//     disabledColor: ColorManager.grey1,
//     splashColor: ColorManager.lightPrimary,
//     //cardView theme.
//     cardTheme: CardTheme(
//       color: ColorManager.white,
//       shadowColor: ColorManager.grey,
//       elevation: AppSize.s4,
//     ),
//     //app bar theme
//     appBarTheme: AppBarTheme(
//       centerTitle: true,
//       color: ColorManager.primary,
//       elevation: AppSize.s4,
//       shadowColor: ColorManager.lightPrimary,
//       titleTextStyle: getRegularStyle(
//         fontsize: FontSize.s16,
//         color: ColorManager.white,
//       ) as TextStyle,
//     ),
//     //button theme
//     buttonTheme: ButtonThemeData(
//       shape: const StadiumBorder(),
//       disabledColor: ColorManager.grey1,
//       buttonColor: ColorManager.primary,
//       splashColor: ColorManager.lightPrimary,
//     ),
//     //elevatd
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         textStyle:
//             getRegularStyle(color: ColorManager.white, fontsize: FontSize.s17), backgroundColor: ColorManager.primary,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppSize.s12),
//         ),
//       ),
//     ),
//     // textTheme
//     textTheme: TextTheme(
//       displayLarge: getLightStyle(color: ColorManager.white),
//       headlineLarge: getSemiBoldStyle(
//           color: ColorManager.darkGrey, fontsize: FontSize.s16),
//       titleMedium:
//           getMeduimStyle(color: ColorManager.lightGrey, fontsize: FontSize.s14),
//       bodyLarge: getRegularStyle(color: ColorManager.grey1),
//       bodySmall: getRegularStyle(
//         color: ColorManager.grey,
//       ),
//     ),
//     //input decoration theme (text form field)
//     inputDecorationTheme: InputDecorationTheme(
//       contentPadding: const EdgeInsets.all(AppPadding.p8),
//       hintStyle: getRegularStyle(
//         color: ColorManager.grey,
//         fontsize: FontSize.s14,
//       ),
//       labelStyle: getRegularStyle(
//         color: ColorManager.grey,
//         fontsize: FontSize.s14,
//       ),
//       errorStyle: getRegularStyle(
//         color: ColorManager.error,
//         fontsize: FontSize.s14,
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(AppSize.s8),
//         ),
//       ),
//       focusedBorder:OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(AppSize.s8),
//         ),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(AppSize.s8),
//         ),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(AppSize.s8),
//         ),
//       ),
//
//     ),
//   );
// }
