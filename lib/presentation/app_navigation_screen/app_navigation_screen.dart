import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ambulanceOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ambulanceTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ambulancepaymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.vendingMachineLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.vendingMachineCategoriesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.vendingMachineGavisconAddToCartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .vendingMachineGavisconAdjustQuantityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.vendingMachineCategoriesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .vendingMachineDigestionGastrointestinalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutOrderSummaryOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutOrderSummaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutCartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentAddCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          ambulanceName: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutCartOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String ambulanceName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  ambulanceName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
