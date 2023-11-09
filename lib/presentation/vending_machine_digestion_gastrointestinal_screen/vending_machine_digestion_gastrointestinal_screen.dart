import '../vending_machine_digestion_gastrointestinal_screen/widgets/productlist_item_widget.dart';
import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VendingMachineDigestionGastrointestinalScreen extends StatelessWidget {
  const VendingMachineDigestionGastrointestinalScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(top: 8.v),
                color: appTheme.whiteA700,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.customBorderTL25),
                child: Container(
                    height: 800.v,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 21.v),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL25),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Container(
                                          width: 269.h,
                                          margin: EdgeInsets.only(left: 1.h),
                                          child: Text(
                                              "Digestion & Gastrointestinal",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleMediumGray90001)),
                                      SizedBox(height: 5.v),
                                      _buildProductList(context)
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(left: 25.h),
                                    child: SizedBox(
                                        height: 624.v,
                                        child: VerticalDivider(
                                            width: 5.h,
                                            thickness: 5.v,
                                            color: theme
                                                .colorScheme.secondaryContainer,
                                            indent: 55.h,
                                            endIndent: 439.h)))
                              ])),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(top: 40.v),
                              child: SizedBox(width: 377.h, child: Divider())))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 43.h, top: 19.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Vending Machine"));
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.v);
            },
            itemCount: 1,
            itemBuilder: (context, index) {
              return ProductlistItemWidget(onTapProductRow: () {
                onTapProductRow(context);
              });
            }));
  }

  /// Navigates to the vendingMachineGavisconAddToCartScreen when the action is triggered.
  onTapProductRow(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.vendingMachineGavisconAddToCartScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
