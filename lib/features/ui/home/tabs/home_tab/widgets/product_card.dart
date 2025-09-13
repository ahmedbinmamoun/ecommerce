import 'package:ecommerce/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  String productImage;
  String productName;
  double rate;
  double price;
   ProductCard({super.key, required this.productImage,required this.productName,required this.rate,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      height: 211.h,
      margin: EdgeInsets.only(left: 8.w, right: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
                borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(16)),
                child: Image.asset(productImage,isAntiAlias: true,fit: BoxFit.cover,),
              ),
          
          SizedBox(height: 3.h,),
          Text(productName),
          SizedBox(height: 3.h,),
          Row(
            children: [
              Text('Review ($rate)'),
              SizedBox(width: 9.w,),
              Image.asset(AppAssets.starIcon),
            ],
          ),
          SizedBox(height: 3.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('EGP ($price)'),
              SizedBox(width: 9.w,),
              Image.asset(AppAssets.addButton),
            ],
          ),

        ],
      ),
    );
  }
}