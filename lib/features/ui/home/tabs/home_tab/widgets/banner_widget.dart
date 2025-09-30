import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  String bannerImage;
   BannerWidget({super.key, required this.bannerImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadiusGeometry.circular(16),
                      child: Image.asset(bannerImage,fit: BoxFit.cover,),
                      );
  }
}