import '../home_one_screen/widgets/article_item_widget.dart';
import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeOneScreen extends StatelessWidget {
  HomeOneScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.h),
                        child: Column(children: [
                          _buildWelcomeBack(context),
                          SizedBox(height: 14.v),
                          _buildSearch(context),
                          SizedBox(height: 19.v),
                          _buildVendingMachine(context),
                          SizedBox(height: 38.v),
                          _buildText(context),
                          SizedBox(height: 9.v),
                          _buildArticle(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        leadingWidth: 77.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGreenMedicalLogo,
            margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v)),
        title: AppbarSubtitleTwo(
            text: "HEALTH PRO", margin: EdgeInsets.only(left: 6.h)),
        actions: [
          Container(
              margin: EdgeInsets.fromLTRB(11.h, 10.v, 11.h, 15.v),
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    height: 4.v,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: appTheme.black90002,
                        borderRadius: BorderRadius.circular(2.h))),
                SizedBox(height: 4.v),
                Container(
                    height: 4.v,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: appTheme.black90002,
                        borderRadius: BorderRadius.circular(2.h))),
                SizedBox(height: 4.v),
                Container(
                    height: 4.v,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: appTheme.black90002,
                        borderRadius: BorderRadius.circular(2.h))),
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildWelcomeBack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse52,
              height: 67.adaptSize,
              width: 67.adaptSize,
              radius: BorderRadius.circular(43.h)),
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 10.v, bottom: 13.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("  Welcome back",
                        style: CustomTextStyles.titleLargeErrorContainer),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(" Jack",
                            style: CustomTextStyles.titleLargeBold))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgNotificationIcon,
              height: 25.v,
              width: 18.h,
              margin: EdgeInsets.only(top: 27.v, bottom: 28.v))
        ]));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: CustomSearchView(
                      controller: searchController,
                      hintText: "What are you finding?",
                      contentPadding: EdgeInsets.only(right: 30.h))),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 4.v),
                  child: Text("Penang", style: CustomTextStyles.bodyMedium15)),
              CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 7.v,
                  width: 10.h,
                  margin: EdgeInsets.only(left: 5.h, top: 14.v, bottom: 9.v))
            ]));
  }

  /// Section Widget
  Widget _buildVendingMachine(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 5.v),
        decoration: AppDecoration.fillLightBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapVendingMachine(context);
                            },
                            child: Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.h, vertical: 13.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder50),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVendingMachine,
                                    height: 72.v,
                                    width: 71.h,
                                    alignment: Alignment.center))),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.doctorConsultationScreen);
                            },
                            child: Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 9.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder50),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgOnlineConsultation,
                                    height: 79.adaptSize,
                                    width: 79.adaptSize,
                                    alignment: Alignment.topCenter))),
                        GestureDetector(
                            onTap: () {
                              onTapAmbulanceIcon(context);
                            },
                            child: Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.h, vertical: 15.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder50),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgAmbulanceIcon,
                                    height: 68.adaptSize,
                                    width: 68.adaptSize,
                                    alignment: Alignment.centerRight)))
                      ])),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 72.h,
                            child: Text("Vending \nMachine",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall)),
                        Spacer(),
                        SizedBox(
                            width: 104.h,
                            child: Text("Online\nConsultation",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall)),
                        Container(
                            width: 93.h,
                            margin: EdgeInsets.only(left: 22.h),
                            child: Text("Emergency\nAmbulance",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 4.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 5.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgHistoryIcon,
                                height: 86.v,
                                width: 73.h,
                                alignment: Alignment.topLeft)),
                        Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 7.h, vertical: 9.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPickUpIcon,
                                height: 76.adaptSize,
                                width: 76.adaptSize,
                                alignment: Alignment.bottomLeft)),
                        Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 6.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgDeliveryIcon,
                                height: 85.v,
                                width: 80.h,
                                alignment: Alignment.topCenter))
                      ])),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, right: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 24.v),
                            child: Text("History",
                                style: theme.textTheme.titleSmall)),
                        Spacer(flex: 50),
                        Padding(
                            padding: EdgeInsets.only(bottom: 24.v),
                            child: Text("Pick Up",
                                style: theme.textTheme.titleSmall)),
                        Spacer(flex: 49),
                        SizedBox(
                            width: 70.h,
                            child: Text("Delivery\nTracker",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 107.h,
              child: Text("Health article",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallGray90002)),
          Padding(
              padding: EdgeInsets.only(left: 216.h, top: 4.v, bottom: 4.v),
              child: Text("See all", style: CustomTextStyles.bodySmallTeal300))
        ]));
  }

  /// Section Widget
  Widget _buildArticle(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 8.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ArticleItemWidget();
        });
  }

  /// Navigates to the vendingMachineLocationScreen when the action is triggered.
  onTapVendingMachine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vendingMachineLocationScreen);
  }

  /// Navigates to the ambulanceOneScreen when the action is triggered.
  onTapAmbulanceIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ambulanceOneScreen);
  }

  onTapOnlineConsultation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorConsultationScreen);
  }
}
