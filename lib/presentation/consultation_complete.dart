import 'dart:ui';
import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

class CompleteConsultation extends StatelessWidget {
  const CompleteConsultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 252, 252),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: const Color.fromARGB(255, 182, 221, 252),
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse5,
                  width:
                      40, // Set the width of the image as per your requirement
                  height:
                      40, // Set the height of the image as per your requirement
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Dr David Lee',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 90),
                CustomImageView(
                  imagePath: ImageConstant.imgDone,
                  width:
                      20, // Set the width of the image as per your requirement
                  height:
                      20, // Set the height of the image as per your requirement
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
        body: Stack(children: [
          Positioned.fill(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.white.withOpacity(0.1),
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Column(
                              children: [
                                Text(
                                  'Consultation Start',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'You can consult your problem to the doctor',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomImageView(
                          imagePath: ImageConstant.imgComponent3,
                          width:
                              525, // Set the width of the image as per your requirement
                          height:
                              400, // Set the height of the image as per your requirement
                          fit: BoxFit.contain,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup125,
                          width:
                              400, // Set the width of the image as per your requirement
                          height:
                              95, // Set the height of the image as per your requirement
                          //fit: BoxFit.contain,
                        ),
                      ],
                    )),
                  ))),
          Positioned.fill(
            child: Center(
              child: Container(
                height: 400,
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    CustomImageView(
                      imagePath: ImageConstant.imgDone,
                      width: 90,
                      height: 90,
                    ),

                    const SizedBox(
                        height:
                            10), // Adjust the spacing between image and text
                    const Text(
                      'Consultation Complete',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Adjust the spacing between image and text
                    const Text(
                      'Please rate your experience',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.ratingDoctorScreen);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgComponent5,
                        width: 125,
                        height: 17,
                      ),
                    ),

                    SizedBox(height: 30),
                    GestureDetector(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgButton,
                        width: 140,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
