import '../vending_machine_categories_screen/widgets/usereducation_item_widget.dart';
import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class VendingMachineCategoriesScreen extends StatelessWidget {
  const VendingMachineCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 4.v),
          padding: EdgeInsets.symmetric(vertical: 24.v),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Nearest Vending Machine",
                    style: CustomTextStyles.titleMedium16,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Divider(indent: 13.h),
              SizedBox(height: 32.v),
              _buildUserEducation(context),
              SizedBox(height: 90.v),
              CustomElevatedButton(
                width: 251.h,
                text: "Click to Order",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
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
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "Vending Machine"),
    );
  }

  Widget _buildUserEducation(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 17.h, right: 24.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 35.v);
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            // Sample data for three vending machines
            final List<Map<String, String>> vendingMachines = [
              {
                'name': 'School of Mathematical Science, USM',
                'address': 'Universiti Sains Malaysia, 11800 Gelugor, Penang',
                'distance': '1 min, 21m',
              },
              {
                'name': 'Eureka, USM',
                'address':
                    'Jalan Sungai Dua, Kampung, Dua Bukit, 11700 Gelugor, Penang.',
                'distance': '3 min, 230m',
              },
              {
                'name': 'Azman Hashim USM Sports Arena',
                'address':
                    '20, Jalan Stadium, Taman Pekaka, 11700 Gelugor, Penang.',
                'distance': '27 min, 1700m',
              },
            ];
            final machine = vendingMachines[index];
            return UsereducationItemWidget(
              name: machine['name']!,
              address: machine['address']!,
              distance: machine['distance']!,
              onTapUserEducation: () {
                onTapUserEducation(context);
              },
            );
          },
        ),
      ),
    );
  }

  // Rest of your code...

  // Navigates to the vendingMachineCategoriesOneScreen when the action is triggered.
  onTapUserEducation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vendingMachineCategoriesOneScreen);
  }

  // Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
