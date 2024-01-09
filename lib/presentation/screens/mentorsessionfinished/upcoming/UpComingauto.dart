import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class UpComingAutoScreen extends StatefulWidget {
  const UpComingAutoScreen({super.key});

  @override
  State<UpComingAutoScreen> createState() => _FinishedAutoScreenScreenState();
}

class _FinishedAutoScreenScreenState extends State<UpComingAutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.99,
                          height: 20.99,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0.52,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7E9EC),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.45,
                                      pointRounding: 0.52,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0.52,
                                        child: Container(
                                          width: 20.99,
                                          height: 20.99,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9A63A),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.45,
                                              pointRounding: 0.52,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 20.99,
                          height: 20.99,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0.52,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7E9EC),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.45,
                                      pointRounding: 0.52,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0.52,
                                        child: Container(
                                          width: 20.99,
                                          height: 20.99,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9A63A),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.45,
                                              pointRounding: 0.52,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 20.99,
                          height: 20.99,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0.52,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7E9EC),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.45,
                                      pointRounding: 0.52,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0.52,
                                        child: Container(
                                          width: 20.99,
                                          height: 20.99,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9A63A),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.45,
                                              pointRounding: 0.52,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 20.99,
                          height: 20.99,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0.52,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7E9EC),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.45,
                                      pointRounding: 0.52,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0.52,
                                        child: Container(
                                          width: 20.99,
                                          height: 20.99,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9A63A),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.45,
                                              pointRounding: 0.52,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 20.99,
                          height: 20.99,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0.52,
                                child: Container(
                                  width: 20.99,
                                  height: 20.99,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7E9EC),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.45,
                                      pointRounding: 0.52,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 1.05,
                                  height: 20.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0.52,
                                        child: Container(
                                          width: 20.99,
                                          height: 20.99,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF252830),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.45,
                                              pointRounding: 0.52,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '4/5',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),


                ],
              ),
              const SizedBox(height: 4),
              Text(
                'This is the review from the student to the mentor',
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
    );
  }
}
