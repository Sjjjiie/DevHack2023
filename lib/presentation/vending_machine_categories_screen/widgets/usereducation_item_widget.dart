import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class UsereducationItemWidget extends StatelessWidget {
  final String name;
  final String address;
  final String distance;

  UsereducationItemWidget({
    Key? key,
    required this.name,
    required this.address,
    required this.distance,
    this.onTapUserEducation,
  }) : super(key: key);

  final VoidCallback? onTapUserEducation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (name == 'School of Mathematical Science, USM') {
          // Navigate only when the specific vending machine is tapped
          onTapUserEducation?.call();
        }
      },
      child: Container(
        width: 345.h,
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder12,
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup383,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 95.v,
              width: 223.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 223.h,
                      child: Text(
                        address,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray70003.copyWith(
                          height: 1.36,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 194.h,
                      child: Text(
                        name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumGray90002,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 4.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img4624623131Che,
                    height: 48.v,
                    width: 41.h,
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 33.h,
                      child: Text(
                        distance,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.58,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
