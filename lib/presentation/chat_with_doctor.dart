import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConsultationChat extends StatelessWidget {
  const ConsultationChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set the status bar color
      statusBarIconBrightness: Brightness.dark, // Set the status bar icon color
      systemNavigationBarColor: Colors.white, // Set the navigation bar color
      systemNavigationBarIconBrightness:
          Brightness.dark, // Set the navigation bar icon color
    ));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 250, 251),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 182, 221, 252),
          title: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse5,
                width: 40, // Set the width of the image as per your requirement
                height:
                    40, // Set the height of the image as per your requirement
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10),
              const Text(
                'Dr David Lee',
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10),
                ),
              ),
              const SizedBox(width: 90),
              CustomImageView(
                imagePath: ImageConstant.imgDone,
                width: 20,
                height: 20,
                onTap: () {
                  onTapDone(context);
                },
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
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
                  SizedBox(height: 5),
                  Text(
                    'You can consult your problem to the doctor',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          CustomImageView(
            imagePath: ImageConstant.imgComponent3,
            width: 600, // Set the width of the image as per your requirement
            height: 475, // Set the height of the image as per your requirement
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
          CustomImageView(
            imagePath: ImageConstant.imgGroup125,
            alignment: Alignment.topLeft,
            width: 400, // Set the width of the image as per your requirement
            height: 100, // Set the height of the image as per your requirement
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.consultationCompleteScreen);
  }
}
