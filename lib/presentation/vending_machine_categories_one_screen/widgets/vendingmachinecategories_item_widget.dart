import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VendingmachinecategoriesItemWidget extends StatelessWidget {
  VendingmachinecategoriesItemWidget({
    Key? key,
    this.onTapFirstAid,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFirstAid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFirstAid!.call();
      },
      child: Container(
        decoration: AppDecoration.outlineBlack900024,
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
                imagePath: ImageConstant.imgImage40,
                height: 70.v,
                width: 88.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 3.v),
            SizedBox(
              width: 53.h,
              child: Text(
                " First Aid",
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
