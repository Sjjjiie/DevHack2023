import 'package:devhack/core/app_export.dart';
import 'package:devhack/presentation/doctor_lee.dart';
import 'package:flutter/material.dart';

class MedicalOfficers extends StatelessWidget {
  const MedicalOfficers({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 231, 236),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 182, 221, 252),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: const Color.fromARGB(255, 182, 221, 252),
            elevation: 0.0,
            automaticallyImplyLeading: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Text(
                'Medical Officers',
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10),
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: Color.fromARGB(255, 244, 239, 239),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 100.0,
                        left: 30.0,
                        right: 16.0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage10,
                                      width: 80,
                                      height: 100,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  Dr David Lee (4.5) ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          '   KPJ Hospital  ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Specialist Cardiologist',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Internal Medicine(General)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   13 Years Experience',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 128, 129, 130)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              top: 105,
                              right: 20,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const DavidLee()),
                                  );
                                },
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgButton2,
                                  width: 70,
                                  height: 25,
                                ),
                              )),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 250.0,
                        left: 30.0,
                        right: 16.0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgDrRuhaida,
                                      width: 70,
                                      height: 100,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  Dr Ruhaida Bt Abdul Irahim(4.5) ',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(
                                          '   Hospital Elizabeth  ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Rheumatology',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Internal Medicine(General)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   6 Years Experience',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 128, 129, 130)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 20,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgButton2,
                              width: 70,
                              height: 25,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 400.0,
                        left: 30.0,
                        right: 16.0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgDrThas,
                                      width: 70,
                                      height: 100,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  Mr M.S Thas (4.0) ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          '   Pantai Hospital  ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   General Surgery',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Specialist Colorectal',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   14 Years Experience',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 128, 129, 130)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 20,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgButton2,
                              width: 70,
                              height: 25,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 550.0,
                        left: 30.0,
                        right: 16.0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgDrBala,
                                      width: 70,
                                      height: 100,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  Dr Bala Sivaneswaran (4.5) ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          '   KPJ Hospital  ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   General Surgery',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   Urology',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 112, 168, 236)),
                                        ),
                                        Text(
                                          '   10 Years Experience',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 128, 129, 130)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 20,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgButton2,
                              width: 70,
                              height: 25,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: TextField(
                        style: const TextStyle(fontSize: 13.0),
                        decoration: InputDecoration(
                          hintText: "Search",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 194, 190, 190),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

