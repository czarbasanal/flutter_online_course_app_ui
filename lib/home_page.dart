import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'details_page.dart';

class FadePageRoute<T> extends MaterialPageRoute<T> {
  FadePageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 55, bottom: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Online',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          color: Colors.white,
                        )),
                    Text('Master Class',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 36.0,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 349,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    dynamic gradientColors;
                    dynamic layout;

                    switch (index) {
                      case 1:
                        gradientColors = [
                          const Color(0XFFF4C465),
                          const Color(0XFFC63956)
                        ];

                        layout = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 24),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFF4C67A),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF2F2F2F)
                                          .withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('NEW CLASS',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GRAPHIC DESIGN',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                    Text('MASTER',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                height: 267,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 100,
                                      top: 110,
                                      child: Image.asset(
                                        'images/Ellipse-blue.png',
                                        width: 195,
                                        height: 179,
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      left: 5,
                                      bottom: -15,
                                      child: Image.asset(
                                        'images/Saly-36.png',
                                        width: 257,
                                        height: 257,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          ],
                        );

                      case 2:
                        gradientColors = [
                          const Color(0xFFC471ED),
                          const Color(0xFF6496FF)
                        ];

                        layout = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 24),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 204, 150, 231),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF2F2F2F)
                                          .withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('Limited Class',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GAME DESIGN &',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                    Text('DEVELOPMENT',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                height: 267,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 26,
                                      top: 110,
                                      child: Image.asset(
                                        'images/Ellipse-yellow.png',
                                        width: 195,
                                        height: 179,
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      left: 0,
                                      right: 5,
                                      bottom: -10,
                                      child: Image.asset(
                                        'images/Saly-19.png',
                                        width: 257,
                                        height: 257,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          ],
                        );

                      case 3:
                        gradientColors = [
                          const Color(0xFFf857a5),
                          const Color(0xFFfe5859)
                        ];

                        layout = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 24),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      const Color.fromARGB(255, 250, 153, 200),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF2F2F2F)
                                          .withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('EXCLUSIVE',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('CYBERSECURITY',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                    Text('EXPERT',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                height: 267,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 100,
                                      top: 110,
                                      child: Image.asset(
                                        'images/Ellipse-blue.png',
                                        width: 195,
                                        height: 179,
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      left: 5,
                                      bottom: -15,
                                      child: Image.asset(
                                        'images/Saly-22.png',
                                        width: 257,
                                        height: 257,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          ],
                        );

                      default:
                        gradientColors = [
                          const Color(0xFF9288E4),
                          const Color(0xFF534EA7)
                        ];

                        layout = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 26),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFAFA8EE),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF2F2F2F)
                                          .withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('Recomended',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('UI/UX DESIGNER',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                    Text('BEGINNER',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 245,
                                height: 268,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 100,
                                      top: 110,
                                      child: Image.asset(
                                        'images/Ellipse-yellow.png',
                                        width: 195,
                                        height: 179,
                                      ),
                                    ),
                                    Positioned(
                                      left: 37,
                                      bottom: 0,
                                      child: Image.asset(
                                        'images/Saly-10.png',
                                        width: 209,
                                        height: 279,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          ],
                        );
                    }

                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(FadePageRoute(
                          builder: (context) => DetailsPage(),
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 26),
                        height: 349,
                        width: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: gradientColors,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: layout,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, top: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Free online class',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                          color: Colors.white,
                        )),
                    Text(
                      'From over 80 Lectures',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: const Color(0xFF9c9a9a),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 42),
                child: SizedBox(
                  height: 685,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        dynamic courseDetails;
                        dynamic imgBackground;
                        dynamic img;
                        double leftPos, bottomPos;
                        int coloredStars = 4;

                        List<Widget> starIcons = List.generate(5, (index) {
                          return Icon(Icons.star,
                              color: index < coloredStars
                                  ? Colors.amber
                                  : Color(0xFF29274f));
                        });

                        switch (index) {
                          case 1:
                            courseDetails = Padding(
                              padding:
                                  const EdgeInsets.only(left: 151, bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Full Stack Javascript',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '6 Hours',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                  Wrap(
                                    children: starIcons,
                                  )
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 84,
                              width: 117,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFCCB4FF),
                              ),
                            );

                            leftPos = 37;
                            bottomPos = 1;
                            img = Image.asset(
                              'images/Saly-13.png',
                              height: 137,
                              width: 137,
                            );

                          case 2:
                            courseDetails = Padding(
                              padding:
                                  const EdgeInsets.only(left: 151, bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Web Development',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '4 Hours',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                  Wrap(
                                    children: starIcons,
                                  )
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 84,
                              width: 117,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFFB4B4),
                              ),
                            );

                            leftPos = 48;
                            bottomPos = 19;
                            img = Image.asset(
                              'images/Saly-24.png',
                              height: 115,
                              width: 115,
                            );
                          case 3:
                          case 4:
                          default:
                            courseDetails = Padding(
                              padding:
                                  const EdgeInsets.only(left: 151, bottom: 8),
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
                                      fontSize: 12.0,
                                      color: const Color(0xFF8C8C8C),
                                    ),
                                  ),
                                  Wrap(
                                    children: starIcons,
                                  )
                                ],
                              ),
                            );

                            imgBackground = Container(
                              height: 84,
                              width: 117,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFFB4B4),
                              ),
                            );

                            leftPos = 48;
                            bottomPos = 19;
                            img = Image.asset(
                              'images/Saly-24.png',
                              height: 115,
                              width: 115,
                            );
                        }
                        return Stack(children: [
                          Positioned(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 26, right: 35, top: 42),
                              height: 92,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF3E3A6D),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0XFF000000)
                                        .withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: courseDetails,
                            ),
                          ),
                          Positioned(
                              left: 48, bottom: 19, child: imgBackground),
                          Positioned(
                              left: leftPos, bottom: bottomPos, child: img),
                          Positioned(
                            left: 362,
                            bottom: 32,
                            child: Container(
                              height: 29,
                              width: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xFFEB53A2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Image.asset('images/play-btn.png'),
                              ),
                            ),
                          ),
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
