import 'package:elmentor/presentation/component/mentors_card.dart';
import 'package:elmentor/presentation/component/progress_bar.dart';
import 'package:elmentor/presentation/component/search_bar.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          progressBar(currentStep: 50,),
          SizedBox(height: AppSize.s31,),
          Padding(
            padding:  EdgeInsets.only(right: AppPadding.p24.w,left:AppPadding.p24.w,bottom: AppPadding.p24.h),
            child: buildTextFormField(onSubmited: (){},
            hintText: AppStrings.search,
              prefix: Padding(
                padding: const EdgeInsets.all(AppPadding.p20),
                child: Image.asset("assets/image/img_3.png",
                width: AppSize.s16,
                height: AppSize.s16,
                ),
              ),
              suffix: Padding(
                padding: const EdgeInsets.only(right: AppPadding.p8),
                child: Icon(Icons.filter_list),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder:(BuildContext context, int index)=> MentorCard() ),
          )
          ,
        ],

      ),
    );
  }
}
