import 'package:elmentor/presentation/component/progress_bar.dart';
import 'package:elmentor/presentation/component/search_bar.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class Mentors extends StatefulWidget {
  const Mentors({super.key});

  @override
  State<Mentors> createState() => _MentorsState();
}

class _MentorsState extends State<Mentors> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.mentors,
          style: TextStyle(fontSize: FontSize.s16, fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          progressBar(width: 138.21,),
          SizedBox(height: AppSize.s31,),
        ],

      ),
    );
  }
}
