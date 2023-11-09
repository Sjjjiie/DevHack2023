import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VendingMachineCategoriesOneScreen extends StatelessWidget {
  const VendingMachineCategoriesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 4.v),
                padding: EdgeInsets.symmetric(vertical: 21.v),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 100.h,
                          margin: EdgeInsets.only(left: 22.h),
                          child: Text("Categories",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )))),
                  SizedBox(height: 10.v),
                  Divider(color: appTheme.blueGray50, indent: 13.h),
                  SizedBox(height: 27.v),
                  _buildFirstAidGrid(context)
                ]))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 43.h, top: 19.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Vending Machine"));
  }

  Widget _buildFirstAidGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 132.v,
                crossAxisCount: 3,
                mainAxisSpacing: 40.h,
                crossAxisSpacing: 40.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 9,
            itemBuilder: (context, index) {
              if (index == 1) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage12,
                  text: "Digestion & Gastrointestinal",
                  onTapFirstAid: () {
                    onTapDigestion(context);
                  },
                  height: 85.v,
                  width: 35.h,
                );
              } else if (index == 0) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage40,
                  text: "First Aid",
                  height: 200.v,
                  width: 150.h,
                );
              } else if (index == 2) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage47,
                  text: "Flu & Fever Relief",
                  height: 85.v,
                  width: 40.h,
                );
              } else if (index == 3) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage48,
                  text: "Oral Care Treatment",
                  height: 300.v,
                  width: 40.h,
                );
              } else if (index == 4) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage43,
                  text: "Pain Relief",
                  height: 200.v,
                  width: 150.h,
                );
              } else if (index == 5) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage45,
                  text: "Cough Syrups & Lozenges",
                  height: 200.v,
                  width: 50.h,
                );
              } else if (index == 6) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage49,
                  text: "Supplement",
                  height: 85.v,
                  width: 40.h,
                );
              } else if (index == 7) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage42,
                  text: "Feminine Product",
                  height: 200.v,
                  width: 150.h,
                );
              } else if (index == 8) {
                return FirstaidgridItemWidget(
                  imagePath: ImageConstant.imgImage41,
                  text: "Family Plannning",
                  height: 200.v,
                  width: 150.h,
                );
              } else {
                // For other boxes, use different images and text as needed
                String image = "image${index + 1}";
                String text = "text${index + 1}";
                return FirstaidgridItemWidget(
                  imagePath: image,
                  text: text,
                  height: 200.v,
                  width: 150.h,
                );
              }
            }));
  }

  onTapDigestion(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.vendingMachineDigestionGastrointestinalScreen);
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

class FirstaidgridItemWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final double height;
  final double width;
  final VoidCallback? onTapFirstAid;

  FirstaidgridItemWidget({
    required this.imagePath,
    required this.text,
    required this.height,
    required this.width,
    this.onTapFirstAid,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFirstAid,
      child: Container(
        decoration: AppDecoration.outlineBlack90002,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 97.v,
              width: 94.h,
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: CustomImageView(
                imagePath: imagePath,
                height: height, // Adjust the height of the image
                width: width, // Adjust the width of the image
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 3.v),
            SizedBox(
              width: 53.h,
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelMedium!.copyWith(
                  height: 1.07,
                ),
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }
}
