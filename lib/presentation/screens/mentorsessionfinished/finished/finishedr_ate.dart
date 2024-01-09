
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class finshed extends StatelessWidget {
  const finshed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Mentor Session with ',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Ahmad Maged',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Icon(Icons.calendar_month,color: ColorManager.primary,),
                      ]),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '5 Nov 2023',
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Icon(Icons.watch_later_outlined,color: ColorManager.primary,),
                      ]),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '01:00 pm - 03:00 pm',
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Icon(Icons.link,color: ColorManager.primary,),
                      ]),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Link for meeting',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Please rate the session after you finish it',
                  style: TextStyle(
                    color: Color(0xFF616161),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
