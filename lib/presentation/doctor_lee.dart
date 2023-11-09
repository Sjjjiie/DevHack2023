import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DavidLee extends StatelessWidget {
  const DavidLee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 184, 217, 244), // Set the background color outside the container
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 217, 244),
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(60.0), // Set the desired height here
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 184, 217, 244),
            iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0.0,
            automaticallyImplyLeading: true, // Show the back button
            title: const Padding(
              padding:
                  EdgeInsets.only(top: 0.0), // Adjust top padding as needed
              child: Text('Dr David Lee',
              style:TextStyle(color: Colors.black)),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Stack(
                  alignment:
                      Alignment.topCenter, // Align children at the top center
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              50.0), // Adjust the radius as needed
                          topRight: Radius.circular(
                              50.0), // Adjust the radius as needed
                        ),
                        color: Color.fromARGB(255, 244, 239, 239),
                      ),
                    ),
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      child: CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      width: 150,
                        height: 150,
                      )
                    ),
                    Positioned(
                      top:
                          190, // Adjust the top position to place the text below the image
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dr David Lee",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "RM 40.00",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                              height:10), // Add spacing between text and container
                          Container(
                            width: MediaQuery.of(context).size.width -
                                40, // Set a finite width for the container
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align text to the left
                              children: [
                                Text(
                                  'Specialisation ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(height: 8), // Add spacing between texts
                                Text(
                                  'Internal Medicine (General)',
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  'Cardiologist ',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(height: 8), // Add spacing between texts
                                Text(
                                  'Current Workplace',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Hospital KPJ Specialist',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(height: 8), // Add spacing between texts
                                Text(
                                  'Education',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'University of Malaya ',
                                  style: TextStyle(fontSize: 13),
                                ),
                                // Add spacing between texts
                                Text(
                                  'Royal College of Physicians of UK',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Language ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(height: 8), // Add spacing between texts
                                Text(
                                  'Malay , English , Cantonese , Mandarin',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),

                          CustomElevatedButton(
                          height: 30,
                          width: 251.h,
                          text: "Proceed to payment",
                          buttonTextStyle: CustomTextStyles.titleMedium17,
                          onPressed: () {
                            onTapProceedPayment(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 2.v)
                    ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  onTapProceedPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorPaymentScreen);
  }
}
