import 'dart:ui';
import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const PaymentSuccess({Key? key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 182, 221, 252),
        title: const Padding(
          padding: EdgeInsets.only(top: 0.0),
          child: Text(
            'Payment',
            style: TextStyle(
              color: Color.fromARGB(255, 10, 10, 10),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Apply blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black
                    .withOpacity(0.5), // Adjust the opacity as needed
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          '     Summary',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '       Consultation Dr David Lee                 RM40.00',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(
                          height: 20,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '       Subtotal                                                RM40.00',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '       6% GST                                                 RM   2.40',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '        Total                                                     RM42.40',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '      Payment Method',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(width: 30),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup74,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMcSymbol3,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'MasterCard ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '****48',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            height: 1,
                            width: 300,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(width: 30),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse9,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCreditCard,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Credit or Debit Card ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Add a new card',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            height: 1,
                            width: 300,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(width: 30),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse9,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Touch N Go E-Wallet',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
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
                    const SizedBox(height: 5),
                    CustomImageView(
                      imagePath: ImageConstant.imgDone,
                      width: 100,
                      height: 100,
                    ),

                    const SizedBox(
                        height:
                            20), // Adjust the spacing between image and text
                    const Text(
                      'Payment Success',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Adjust the spacing between image and text
                    const Text(
                      'You can start your consultation now !',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 15),
                    CustomElevatedButton(
                          width: 251.h,
                          text: "Complete",
                          onPressed: (){
                            onTapCompletePayment(context);
                          },
                          buttonTextStyle: CustomTextStyles.titleMedium17,
                          alignment: Alignment.center),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
  onTapCompletePayment(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.chatWithDoctorScreen);
  }
}


