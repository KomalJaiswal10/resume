import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:pdf/widgets.dart' as pw;

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 2,
          child: Container(
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.width * .8,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 280,
                  color: Colors.white,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: const AssetImage('assets/bg.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken,
                                ))),
                      ),
                      Positioned(
                        right: 45,
                        top: 46,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'KOMAL DINESH JAISWAL',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'FLUTTER DEVELOPER',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 135),
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        height: 55,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  const Expanded(flex: 2, child: SizedBox()),
                                  Expanded(
                                      flex: 7,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/gmail.png',
                                                        width: 12,
                                                      ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        'komaljaiswal2810@gmail.com',
                                                        style: GoogleFonts.lato(
                                                            color:
                                                                Colors.blueGrey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/phone-call.png',
                                                        width: 12,
                                                      ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        '9892771775',
                                                        style: GoogleFonts.lato(
                                                            color:
                                                                Colors.blueGrey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          Expanded(
                                              flex: 5,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/linkedin.png',
                                                        width: 12,
                                                      ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        'linkedin.com/in/komal-jaiswal-1a9842234/',
                                                        style: GoogleFonts.lato(
                                                            color:
                                                                Colors.blueGrey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/github.png',
                                                        width: 12,
                                                      ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        'github.com/KomalJaiswal10',
                                                        style: GoogleFonts.lato(
                                                            color:
                                                                Colors.blueGrey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 80,
                        child: HexagonWidget.pointy(
                          width: 75,
                          color: Colors.white,
                          elevation: 8,
                          child: HexagonWidget.pointy(
                            width: 70,
                            color: const Color(0xff001F3F),
                            elevation: 0,
                            child: Text(
                              'Developed In\nFlutter',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   clipBehavior: Clip.none,
                //   alignment: Alignment.bottomCenter,
                //   height: 50,
                //   color: Colors.grey[300],
                // ),

                // const Expanded(flex: 8, child: Column())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<pw.Document> resume() async {
  final doc = pw.Document();
  doc.addPage(pw.Page(build: (pw.Context context) {
    return pw.Container();
  }));

  return doc;
}
