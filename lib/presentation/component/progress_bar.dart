import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class progressBar extends StatelessWidget {
   progressBar({super.key,required this.currentStep});
  int currentStep ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x07101828),
              blurRadius: 6,
              offset: Offset(0, 4),
              spreadRadius: -2,
            ),
            BoxShadow(
              color: Color(0x14101828),
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: -4,
            )
          ],
        ),
        child: StepProgressIndicator(
          totalSteps: 100,
          currentStep: currentStep,
          size: 5,
          padding: 0,
          selectedColor: ColorManager.primary,
          unselectedColor:ColorManager.light,
          roundedEdges: Radius.circular(10),

        ),
      ),
    );
    //   Container(
    //   width: double.infinity,
    //   height: 47.0,

    //   child: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Expanded(
    //         child: Center(
    //           child: Container(
    //             height: 4,
    //             child: Row(
    //               mainAxisSize: MainAxisSize.min,
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Container(
    //                   width: 343,
    //                   height: 4,
    //                   decoration: ShapeDecoration(
    //                     shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(8)),
    //                   ),
    //                   child: Stack(
    //                     children: [
    //                       Positioned(
    //                         left: 0,
    //                         top: 0,
    //                         child: Container(
    //                           width: 343,
    //                           height: 4,
    //                           decoration: ShapeDecoration(
    //                             color: Color(0xFFE7E9EC),
    //                             shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadius.circular(4)),
    //                           ),
    //                         ),
    //                       ),
    //                       Positioned(
    //                         left: 0,
    //                         top: 0,
    //                         child: Container(
    //                           width: width,
    //                           height: 4,
    //                           decoration: ShapeDecoration(
    //                             color: ColorManager.primary,
    //                             shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadius.circular(4)),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
