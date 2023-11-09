import 'package:devhack/core/app_export.dart';
import 'package:devhack/presentation/medical_officers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/medicalOfficers': (context) => const MedicalOfficers(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop(Color.fromARGB(
              255, 26, 27, 27)); // Navigate back to the previous screen
          return false; // Return false to prevent the default back button behavior
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 60.0, right: 100.0),
                          child: Text(
                            "    Online Doctor",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: Text(
                            "     Consultation",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 201, 231, 255),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "       Your 24/7 Health",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 10, 10),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "       Companion : ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 16, 15, 15),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "       Expert Advice , Anytime",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 19, 19, 19),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "       Anywhere!",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "       We always provide the",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 15, 15, 15),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "       service to you !",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 13, 13, 13),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "    Secure&Private      .      Professionals      .      Quality",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            style: TextStyle(fontSize: 14.0),
                            decoration: InputDecoration(
                              hintText: "Search",
                              filled: true,
                              fillColor: Color.fromARGB(255, 194, 190, 190),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "      Frequently used Caders",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MedicalOfficers();
                              }),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      "                          Medical Officers",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "                                 >",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "                                    200 available doctors",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "                          Child Specialist",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: "                                  >",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "                                    75 available doctors",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        CustomPaint(
                          size: Size(400, 0.5),
                          painter: LinePainter(),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "       Caders",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "                          Cardiologist",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text:
                                    "                                       >",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "                                    Heart Specialist . 75 available doctors",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "                          Neurologist",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text:
                                    "                                        >",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "                                    Brain Specialist . 32 available doctors",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 200,
                      top: 45,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgComponent1,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 515,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 450,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon1,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 720,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon2,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 660,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon3,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    const double startX = 0;
    final double endX = size.width;
    final double y = size.height / 2;

    canvas.drawLine(Offset(startX, y), Offset(endX, y), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
