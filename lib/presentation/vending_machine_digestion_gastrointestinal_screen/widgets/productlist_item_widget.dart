import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget({
    Key? key,
    this.onTapProductRow,
  }) : super(key: key);

  VoidCallback? onTapProductRow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapProductRow?.call();
          },
          child: Container(
            // Existing container
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineBlack90002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              children: [
                SizedBox(width: 30),
                CustomImageView(
                  imagePath: ImageConstant.imgImage12,
                  height: 120.v,
                  width: 40.h,
                ),
                SizedBox(width: 25),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 10.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 223.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "Gaviscon Double Action Liquid 150ml",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "RM30.90",
                        style: CustomTextStyles.bodyMediumBlack90001,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 41),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineBlack90002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            children: [
              SizedBox(width: 30),
              CustomImageView(
                imagePath: ImageConstant.imgImage39,
                height: 90.v,
                width: 50.h,
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gaviscon Double Action Liquid",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      "Sachets 5pcs x 10ml",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      'RM15.50',
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 41),
        Container(
          // Existing container
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineBlack90002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            children: [
              SizedBox(width: 30),
              CustomImageView(
                imagePath: ImageConstant.imgImage37,
                height: 65.v,
                width: 55.h,
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pil Chi-Kit Teck Aun 12pcs",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      'RM17.50',
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 41),
        Container(
          // Existing container
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineBlack90002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            children: [
              SizedBox(width: 30),
              CustomImageView(
                imagePath: ImageConstant.imgImage35,
                height: 90.v,
                width: 55.h,
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alucid Suspension 100ml",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      'RM7.30',
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 41),
        Container(
          // Existing container
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineBlack90002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            children: [
              SizedBox(width: 30),
              CustomImageView(
                imagePath: ImageConstant.imgImage36,
                height: 80.v,
                width: 60.h,
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Po Chai Pills 10s / Bao Ji Wan",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      'RM18.90',
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
