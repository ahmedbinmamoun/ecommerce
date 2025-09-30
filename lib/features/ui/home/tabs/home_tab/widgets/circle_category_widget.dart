import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleCategoryWidget extends StatelessWidget {
  String categoryImage;
  String categoryName;
   CircleCategoryWidget({super.key, required this.categoryImage, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144.h,
      width: 100.h,
      margin: EdgeInsets.only(left: 8.w, right: 8.w),
      child: Column(
        children: [
          Image.asset(categoryImage),
          SizedBox(height: 8.h,),
          Text(categoryName,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}