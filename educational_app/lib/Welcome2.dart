import 'package:educational_app/studentprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    width: 500,
                    height: 615,
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 150),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/leptonscipro-31792.appspot.com/o/files%2Fimages%2FL.png?alt=media&token=df7f5700-d44c-4af5-b48b-0112f50d1c79'))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 140),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lepton",
                                  style: GoogleFonts.lato(
                                      fontSize: 50, color: Colors.red),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Chasing the future for a better today",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                        ),
                      ]),
                      SizedBox(
                        height: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentProfile()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 40,
                            right: 40,
                          ),
                          child: Container(
                            width: 300,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.redAccent),
                            child: Center(
                              child: Text(
                                'CREATE STUDENT PROFILE',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentProfile()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 40,
                            right: 40,
                          ),
                          child: Container(
                            width: 300,
                            height: 55,
                            decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.redAccent),
                            child: Center(
                              child: Text(
                                'CREATE FACULTY PROFILE',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 500,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7),
                      topLeft: Radius.circular(7)),
                  color: Colors.redAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 160, top: 100),
                  child: Text(
                    "Welcome !",
                    style:
                        GoogleFonts.roboto(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 68, top: 188),
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              maxRadius: 178,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 59, top: 200),
            child: Container(
              height: 334,
              width: 375,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Column(
                children: [
                  Lottie.network(
                      'https://assets5.lottiefiles.com/packages/lf20_1t8na1gy.json',
                      fit: BoxFit.fill),
                  // SizedBox(
                  //   height: 35,
                  // ),
                  // Text(
                  //   "Start Learning Today",
                  //   style: GoogleFonts.radioCanada(
                  //       fontSize: 15,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold),
                  // )
                ],
              ),
            ),
          ),
        ])));
  }
}
