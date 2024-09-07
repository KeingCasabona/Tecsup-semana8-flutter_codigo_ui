import 'package:flutter/material.dart';
import 'package:flutter_codigo_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kColorPrimary,
                    kColorSecondary,
                  ],
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              //height: 300,
              width: double.infinity,
              child: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Parkirin',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '24 °C',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/images/cloudy.png',
                              height: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6,
                        ),
                        child: Text(
                          "Let's find a place for you",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                              hintText: 'Find parking place',
                              hintStyle: GoogleFonts.montserrat(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          height: 54,
                          width: 54,
                          child: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(colors: [
                              kColorTertiary,
                              kColorQuaternary,
                            ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Parking Near You',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kColorPrimary,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'View More',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              color: kColorTertiary,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.arrow_forward_ios, color: kColorTertiary),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 220,
                    width: 160,
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.06),
                                blurRadius: 12,
                                offset: Offset(4, 4),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/maps.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Block C Benyamin',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                  color: kColorPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'JL. Kita Berduamin',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                  color: kColorPrimary.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Open',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Expanded(
                                      child: Text(
                                        '07:00 - 22:00',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: GoogleFonts.montserrat(
                                          color: kColorPrimary.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
