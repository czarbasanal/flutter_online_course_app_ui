import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    int coloredStars = 5;
    List<Widget> starIcons = List.generate(5, (index) {
      return Icon(Icons.star,
          color: index < coloredStars
              ? Colors.amber
              : Color.fromARGB(255, 86, 82, 126));
    });

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ClipRRect(
                  child: Transform.translate(
                    offset: const Offset(0, -24),
                    child: Container(
                      width: 496,
                      height: 392,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: const LinearGradient(
                          colors: [Color(0XFFF4C465), Color(0XFFC63956)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 183,
                  top: 132,
                  child: Image.asset(
                    'images/Ellipse-blueBig.png',
                    width: 283,
                    height: 260,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 24,
                  bottom: 0,
                  child: Image.asset(
                    'images/Saly-36.png',
                    width: 414,
                    height: 414,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 36.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 29),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 11),
                      child: Row(
                        children: [
                          Wrap(children: starIcons),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              '(5.0)',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: const Color.fromARGB(255, 192, 192, 192),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Graphic Design Master',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45,
                      width: 118,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              child: Image.asset('images/Ellipse-3.png')),
                          Positioned(
                              left: 24,
                              child: Image.asset(
                                'images/Ellipse-4.png',
                              )),
                          Positioned(
                              left: 48,
                              child: Image.asset(
                                'images/Ellipse-5.png',
                              )),
                          Positioned(
                              left: 72,
                              child: Image.asset(
                                'images/Ellipse-6.png',
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Text(
                        '+28K Members',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: const Color(0XFFCACACA),
                        ),
                      ),
                    ),
                    Container(
                      width: 54,
                      height: 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xFF353567),
                      ),
                      child: Image.asset('images/like-btn.png'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 42),
                child: SizedBox(
                  height: 550,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        dynamic courseDetails;
                        dynamic imgBackground;
                        dynamic img;
                        double leftPos, bottomPos, topPos;
                        dynamic customMargin;
                        dynamic bgColor;

                        switch (index) {
                          case 0:
                            bgColor = const Color(0XFF3E3A6D);
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Introduction Graphic Design',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '12 Minutes',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0,
                                          color: const Color(0xFF8C8C8C),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: Container(
                                          width: 39,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0XFFEB53A2),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Free',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFDB61A1),
                              ),
                            );

                            leftPos = 2;
                            bottomPos = -14;
                            topPos = 16;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 52);
                            img = Image.asset(
                              'images/Saly-20.png',
                            );

                          case 1:
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fundamental of Design',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '16 Minutes',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFF4C465),
                              ),
                            );

                            leftPos = 0;
                            bottomPos = -32;
                            topPos = 0;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 16);
                            img = Image.asset(
                              'images/Saly-21.png',
                            );

                          case 2:
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Layout Design',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '10 Minutes',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF326AA5),
                              ),
                            );

                            leftPos = 0;
                            bottomPos = 8;
                            topPos = 16;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 16);
                            img = Image.asset(
                              'images/Saly-25.png',
                            );
                          case 3:
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Design Principles',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '30 Minutes',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0XFFFFE9AF),
                              ),
                            );

                            leftPos = 22;
                            bottomPos = 8;
                            topPos = 14;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 16);
                            img = Image.asset(
                              'images/Saly-28.png',
                            );
                          case 4:
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Design Exercises',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '2 Hours',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFFFB5B5),
                              ),
                            );

                            leftPos = 18;
                            bottomPos = 4;
                            topPos = 20;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 16);
                            img = Image.asset(
                              'images/Saly-27.png',
                            );
                          default:
                            courseDetails = Padding(
                              padding: const EdgeInsets.only(left: 117),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter Developer',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '8 Hours',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 82,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFDB61A1),
                              ),
                            );

                            leftPos = 0;
                            bottomPos = -14;
                            topPos = 25;
                            customMargin = const EdgeInsets.only(
                                left: 20, right: 20, top: 16);
                            img = Image.asset(
                              'images/Saly-20.png',
                            );
                        }
                        return Stack(children: [
                          Positioned(
                            child: Container(
                              margin: customMargin,
                              height: 82,
                              width: 374,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: bgColor,
                              ),
                              child: courseDetails,
                            ),
                          ),
                          Positioned(left: 20, bottom: 0, child: imgBackground),
                          Positioned(
                              left: leftPos,
                              bottom: bottomPos,
                              top: topPos,
                              child: img),
                        ]);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
