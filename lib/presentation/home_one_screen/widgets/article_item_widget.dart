import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArticle1,
            height: 44.v,
            width: 63.h,
            margin: EdgeInsets.only(bottom: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 226.h,
                  child: Text(
                    "The Link Between Gut Health, Anxiety and Depression",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelMediumGray70004,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jan 22, 2020 ",
                      style: theme.textTheme.labelSmall,
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        top: 3.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onError,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "5min read",
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmark,
            height: 13.v,
            width: 11.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 31.v,
            ),
          ),
        ],
      ),
    );
  }
}
