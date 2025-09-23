import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/config/di/di.dart';
import 'package:ecommerce/core/utils/app_assets.dart';
import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_styles.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/cubit/home_tab_view_model.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/widgets/banner_widget.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/widgets/circle_category_widget.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/widgets/product_card.dart';
import 'package:ecommerce/features/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
   HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  TextEditingController searchController = TextEditingController();

  HomeTabViewModel viewModel = getIt<HomeTabViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 6.h,left: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppAssets.routeLogo),
                SizedBox(height: 16.h,),
                Row(
                  children: [
                    SizedBox(
                      width: 348.w,
                      child: CustomTextFormField(
                        controller: searchController,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        ),
                    ),
                    Image.asset(AppAssets.shoppingCart),
                  ],
                ),
                SizedBox(height: 16.h,),
                Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: ImageSlideshow(
                    width: double.infinity,
                    height: 200.h,
                    initialPage: 0,
                    indicatorColor: AppColors.primaryColor,
                    indicatorBackgroundColor: AppColors.whiteColor,
                    isLoop: true,
                    autoPlayInterval: 3000,
                    children: [
                      BannerWidget(bannerImage: AppAssets.announcement1),
                      BannerWidget(bannerImage: AppAssets.announcement2),
                      BannerWidget(bannerImage: AppAssets.announcement3),
                    ]
                    ),
                ),
                SizedBox(height: 16.h,),
            
                Padding(
                  padding:  EdgeInsets.only(right: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categoris',style: AppStyles.medium14Category,),
                      GestureDetector(
                        onTap: (){
                          //view all categoties
                        },
                        child: Text('view all',style: AppStyles.regular12Text,))  ,
                    ],
                  ),
                ),
                SizedBox(height: 16.h,),
                CarouselSlider( 
                  options: CarouselOptions(
                    height: 200.h,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 2/7,
                    enableInfiniteScroll: false,
                  ),
            
                  items: [
                    CircleCategoryWidget(categoryImage: AppAssets.menCategory, categoryName: 'men\’sfashion'),
                    CircleCategoryWidget(categoryImage: AppAssets.womenCategory, categoryName: 'women\’s fashion'),
                    CircleCategoryWidget(categoryImage: AppAssets.electronicsCategory, categoryName: 'Laptops &Electronics'),
                    CircleCategoryWidget(categoryImage: AppAssets.menCategory, categoryName: 'men\’s fashion'),
                    CircleCategoryWidget(categoryImage: AppAssets.womenCategory, categoryName: 'women\’s fashion'),
                    CircleCategoryWidget(categoryImage: AppAssets.skinCareCategory, categoryName: 'Skincare'),
                  ],
                  ),
                  CarouselSlider( 
                    
                  options: CarouselOptions(
                    height: 200.h,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 2/7,
                    enableInfiniteScroll: false,
                  ),
                  items: [
                    CircleCategoryWidget(categoryImage: AppAssets.beautyCategory, categoryName: 'Beauty'),
                    CircleCategoryWidget(categoryImage: AppAssets.headphoneCategory, categoryName: 'Headphones'),
                    CircleCategoryWidget(categoryImage: AppAssets.electronicsCategory, categoryName: 'Laptops &Electronics'),
                    CircleCategoryWidget(categoryImage: AppAssets.skinCareCategory, categoryName: 'Skincare'),
                    CircleCategoryWidget(categoryImage: AppAssets.womenCategory, categoryName: 'women\’sfashion'),
                    CircleCategoryWidget(categoryImage: AppAssets.menCategory, categoryName: 'men\’sfashion'),
                  ],
                  ),
                  Text('Home Appliance',style: AppStyles.regular14Text,),
                  SizedBox(height: 16.h,),
                   CarouselSlider( 
                  options: CarouselOptions(
                    height: 200.h,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 2/5,
                    enableInfiniteScroll: false,
                   
                  ),
                  items: [
                  ProductCard(productImage: AppAssets.shoesItemImage3, productName: 'Nike Air Jordon', rate: 4.7, price: 1200),
                  ProductCard(productImage: AppAssets.shoesItemImage1, productName: 'Nike Air Jordon', rate: 4.4, price: 800),
                  ProductCard(productImage: AppAssets.shoesItemImage2, productName: 'Nike Air Jordon', rate: 4.9, price: 1500),
                  ProductCard(productImage: AppAssets.shoesItemImage3, productName: 'Nike Air Jordon', rate: 4.7, price: 1200),
                  ],
                  ),
                  SizedBox(height: 40.h,),

              ],
            ),
          ),
        )
        ),
    );
  }
}